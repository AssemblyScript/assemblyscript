(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_none (func))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
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
 (type $none_=>_i32 (func (result i32)))
 (type $i32_f32_f32_=>_i32 (func (param i32 f32 f32) (result i32)))
 (type $i32_f64_f64_=>_i32 (func (param i32 f64 f64) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "onrealloc" (func $~lib/rt/rtrace/onrealloc (param i32 i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (memory $0 1)
 (data (i32.const 16) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 64) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 128) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 176) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 224) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 288) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00s\00t\00d\00/\00m\00a\00p\00.\00t\00s\00")
 (data (i32.const 336) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00")
 (data (i32.const 400) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00")
 (data (i32.const 448) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 496) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (table $0 1 funcref)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/gc/gc.auto (mut i32) (i32.const 1))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 548))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/tlsf/removeBlock (; 6 ;) (param $0 i32) (param $1 i32)
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
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 277
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
  local.get $3
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 279
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
   i32.const 32
   i32.const 292
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=16
  local.set $6
  local.get $1
  i32.load offset=20
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   i32.store offset=20
  end
  local.get $7
  if
   local.get $7
   local.get $6
   i32.store offset=16
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
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 7 ;) (param $0 i32) (param $1 i32)
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
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 205
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 207
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 16
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
   i32.const 16
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   i32.const 1073741808
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
    i32.store
    local.get $1
    local.set $6
    local.get $6
    i32.const 16
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
   local.get $3
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 228
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741808
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
    i32.store
    local.get $6
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $8
  local.get $8
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $8
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 243
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $8
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 244
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
   i32.const 32
   i32.const 260
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
  i32.store offset=16
  local.get $1
  local.get $11
  i32.store offset=20
  local.get $11
  if
   local.get $11
   local.get $1
   i32.store offset=16
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
  i32.store
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
 (func $~lib/rt/tlsf/addMemory (; 8 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  local.get $2
  i32.le_u
  if (result i32)
   local.get $1
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 386
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   local.get $1
   local.get $4
   i32.const 16
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 396
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
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 408
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
  i32.const 48
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 16
  i32.const 1
  i32.shl
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
  i32.store
  local.get $8
  i32.const 0
  i32.store offset=16
  local.get $8
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $6
  i32.add
  i32.const 16
  i32.sub
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  i32.store
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
 (func $~lib/rt/tlsf/maybeInitialize (; 9 ;) (result i32)
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
  global.get $~lib/rt/tlsf/ROOT
  local.set $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/heap/__heap_base
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   local.set $1
   memory.size
   local.set $2
   local.get $1
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
   local.set $3
   local.get $3
   local.get $2
   i32.gt_s
   if (result i32)
    local.get $3
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
   local.get $1
   local.set $0
   local.get $0
   i32.const 0
   i32.store
   local.get $0
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
     local.get $0
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
       local.get $0
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
   local.get $1
   i32.const 1572
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   local.set $5
   local.get $0
   local.get $5
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   drop
   local.get $0
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (; 10 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 80
   i32.const 32
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $1
  i32.const 16
  local.tee $2
  local.get $1
  local.get $2
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 11 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 536870904
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
   i32.const 32
   i32.const 338
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
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 351
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
 (func $~lib/rt/tlsf/growMemory (; 12 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.const 536870904
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
  i32.const 16
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
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
 (func $~lib/rt/tlsf/prepareBlock (; 13 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 365
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
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
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
   i32.store
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
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
   i32.const 16
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
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (; 14 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/tlsf/collectLock
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/searchBlock
  local.set $4
  local.get $4
  i32.eqz
  if
   global.get $~lib/gc/gc.auto
   if
    i32.const 1
    global.set $~lib/rt/tlsf/collectLock
    call $~lib/rt/pure/__collect
    i32.const 0
    global.set $~lib/rt/tlsf/collectLock
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.set $4
    local.get $4
    i32.eqz
    if
     local.get $0
     local.get $3
     call $~lib/rt/tlsf/growMemory
     local.get $0
     local.get $3
     call $~lib/rt/tlsf/searchBlock
     local.set $4
     local.get $4
     i32.eqz
     if
      i32.const 0
      i32.const 32
      i32.const 513
      i32.const 20
      call $~lib/builtins/abort
      unreachable
     end
    end
   else
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/growMemory
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.set $4
    local.get $4
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 518
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $4
  i32.load
  i32.const -4
  i32.and
  local.get $3
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 521
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  local.get $2
  i32.store offset=8
  local.get $4
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $4
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $4
  local.get $3
  call $~lib/rt/tlsf/prepareBlock
  local.get $4
  call $~lib/rt/rtrace/onalloc
  local.get $4
 )
 (func $~lib/rt/tlsf/__alloc (; 15 ;) (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/increment (; 16 ;) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 109
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  call $~lib/rt/rtrace/onincrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 112
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 17 ;) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/memory/memory.fill (; 18 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 19 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 192
   i32.const 240
   i32.const 54
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/rt/pure/__release (; 20 ;) (param $0 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/map/Map<i8,i32>#clear (; 21 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<i8,i32>#constructor (; 22 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 3
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<i8,i32>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash8 (; 23 ;) (param $0 i32) (result i32)
  i32.const -2128831035
  local.get $0
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/map/Map<i8,i32>#find (; 24 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=8
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
 (func $~lib/map/Map<i8,i32>#has (; 25 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i8>|inlined.0 (result i32)
   local.get $1
   local.set $2
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
 (func $~lib/map/Map<i8,i32>#rehash (; 26 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     i32.load8_s
     i32.store8
     local.get $11
     local.get $10
     i32.load offset=4
     i32.store offset=4
     block $~lib/util/hash/HASH<i8>|inlined.2 (result i32)
      local.get $10
      i32.load8_s
      local.set $12
      local.get $12
      call $~lib/util/hash/hash8
      br $~lib/util/hash/HASH<i8>|inlined.2
     end
     local.get $1
     i32.and
     local.set $12
     local.get $3
     local.get $12
     i32.const 4
     i32.mul
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.load
     i32.store offset=8
     local.get $13
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
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $13
  local.get $5
  local.tee $9
  local.get $13
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i8,i32>#set (; 27 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<i8>|inlined.1 (result i32)
   local.get $1
   local.set $3
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
   i32.store offset=4
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
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store8
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<i8,i32>#get (; 28 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i8>|inlined.3 (result i32)
   local.get $1
   local.set $2
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
   i32.const 352
   i32.const 416
   i32.const 111
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<i8,i32>#get:size (; 29 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<i8>#constructor (; 30 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 192
   i32.const 464
   i32.const 57
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
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 4
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/rt/tlsf/checkUsedBlock (; 31 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 16
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
  if (result i32)
   local.get $1
   i32.load offset=4
   i32.const -268435456
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 581
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/util/memory/memcpy (; 32 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/memory.copy (; 33 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
   local.get $4
   local.get $3
   i32.add
   local.get $5
   i32.le_u
   if (result i32)
    i32.const 1
   else
    local.get $5
    local.get $3
    i32.add
    local.get $4
    i32.le_u
   end
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
 (func $~lib/rt/tlsf/freeBlock (; 34 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $1
  call $~lib/rt/rtrace/onfree
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 35 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $3
  local.get $4
  i32.const -4
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  local.set $5
  local.get $5
  i32.const 16
  i32.add
  local.get $5
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $6
  local.get $6
  i32.load
  local.set $7
  local.get $7
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $7
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $5
   local.get $5
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $4
    i32.const 3
    i32.and
    local.get $5
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/tlsf/allocateBlock
  local.set $8
  local.get $8
  local.get $1
  i32.load offset=4
  i32.store offset=4
  local.get $8
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  global.get $~lib/heap/__heap_base
  i32.ge_u
  if
   local.get $1
   local.get $8
   call $~lib/rt/rtrace/onrealloc
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $8
 )
 (func $~lib/rt/tlsf/__realloc (; 36 ;) (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/array/ensureSize (; 37 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 1073741808
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 192
    i32.const 464
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
   call $~lib/rt/tlsf/__realloc
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
 (func $~lib/array/Array<i8>#__unchecked_set (; 38 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/array/Array<i8>#__set (; 39 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 512
    i32.const 464
    i32.const 120
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
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i8>#__unchecked_set
 )
 (func $~lib/array/Array<i8>#set:length (; 40 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<i8,i32>#keys (; 41 ;) (param $0 i32) (result i32)
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
 (func $~lib/array/Array<i32>#constructor (; 42 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 268435452
  i32.gt_u
  if
   i32.const 192
   i32.const 464
   i32.const 57
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
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 5
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<i32>#__unchecked_set (; 43 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<i32>#__set (; 44 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 512
    i32.const 464
    i32.const 120
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
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#__unchecked_set
 )
 (func $~lib/array/Array<i32>#set:length (; 45 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $0
  local.get $1
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<i8,i32>#values (; 46 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<i8,i8>#clear (; 47 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<i8,i8>#constructor (; 48 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 6
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<i8,i8>#clear
  local.get $0
 )
 (func $~lib/map/Map<i32,i32>#clear (; 49 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<i32,i32>#constructor (; 50 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 7
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<i32,i32>#clear
  local.get $0
 )
 (func $~lib/array/Array<i8>#get:length (; 51 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i8>#__unchecked_get (; 52 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i8>#__get (; 53 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 512
   i32.const 464
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 54 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 55 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 512
   i32.const 464
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/map/Map<i8,i8>#find (; 56 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=4
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
 (func $~lib/map/Map<i8,i8>#rehash (; 57 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     i32.load8_s
     i32.store8
     local.get $11
     local.get $10
     i32.load8_s offset=1
     i32.store8 offset=1
     block $~lib/util/hash/HASH<i8>|inlined.5 (result i32)
      local.get $10
      i32.load8_s
      local.set $12
      local.get $12
      call $~lib/util/hash/hash8
      br $~lib/util/hash/HASH<i8>|inlined.5
     end
     local.get $1
     i32.and
     local.set $12
     local.get $3
     local.get $12
     i32.const 4
     i32.mul
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.load
     i32.store offset=4
     local.get $13
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
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $13
  local.get $5
  local.tee $9
  local.get $13
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i8,i8>#set (; 58 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<i8>|inlined.4 (result i32)
   local.get $1
   local.set $3
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
   i32.store8 offset=1
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
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $6
   i32.const 8
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store8
   local.get $5
   local.get $2
   i32.store8 offset=1
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=4
   local.get $6
   local.get $5
   i32.store
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/hash/hash32 (; 59 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<i32,i32>#find (; 60 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=8
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
 (func $~lib/map/Map<i32,i32>#rehash (; 61 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     i32.load
     i32.store
     local.get $11
     local.get $10
     i32.load offset=4
     i32.store offset=4
     block $~lib/util/hash/HASH<i32>|inlined.1 (result i32)
      local.get $10
      i32.load
      local.set $12
      local.get $12
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<i32>|inlined.1
     end
     local.get $1
     i32.and
     local.set $12
     local.get $3
     local.get $12
     i32.const 4
     i32.mul
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.load
     i32.store offset=8
     local.get $13
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
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $13
  local.get $5
  local.tee $9
  local.get $13
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i32,i32>#set (; 62 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<i32>|inlined.0 (result i32)
   local.get $1
   local.set $3
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
   i32.store offset=4
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
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<i8,i8>#get:size (; 63 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i32,i32>#get:size (; 64 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i8,i32>#delete (; 65 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i8>|inlined.6 (result i32)
   local.get $1
   local.set $2
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
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
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
 (func $std/map/testNumeric<i8,i32> (; 66 ;)
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    local.get $9
    local.get $9
    call $~lib/map/Map<i8,i8>#set
    call $~lib/rt/pure/__release
    local.get $6
    local.get $10
    i32.const 20
    i32.sub
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    call $~lib/rt/pure/__release
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
   i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $7
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u8,i32>#clear (; 67 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<u8,i32>#constructor (; 68 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 8
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<u8,i32>#clear
  local.get $0
 )
 (func $~lib/map/Map<u8,i32>#find (; 69 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=8
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
 (func $~lib/map/Map<u8,i32>#has (; 70 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u8>|inlined.0 (result i32)
   local.get $1
   local.set $2
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
 (func $~lib/map/Map<u8,i32>#rehash (; 71 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     i32.load8_u
     i32.store8
     local.get $11
     local.get $10
     i32.load offset=4
     i32.store offset=4
     block $~lib/util/hash/HASH<u8>|inlined.2 (result i32)
      local.get $10
      i32.load8_u
      local.set $12
      local.get $12
      call $~lib/util/hash/hash8
      br $~lib/util/hash/HASH<u8>|inlined.2
     end
     local.get $1
     i32.and
     local.set $12
     local.get $3
     local.get $12
     i32.const 4
     i32.mul
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.load
     i32.store offset=8
     local.get $13
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
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $13
  local.get $5
  local.tee $9
  local.get $13
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u8,i32>#set (; 72 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u8>|inlined.1 (result i32)
   local.get $1
   local.set $3
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
   i32.store offset=4
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
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store8
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<u8,i32>#get (; 73 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u8>|inlined.3 (result i32)
   local.get $1
   local.set $2
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
   i32.const 352
   i32.const 416
   i32.const 111
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<u8,i32>#get:size (; 74 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<u8>#constructor (; 75 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 192
   i32.const 464
   i32.const 57
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
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 9
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<u8>#__unchecked_set (; 76 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/array/Array<u8>#__set (; 77 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 512
    i32.const 464
    i32.const 120
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
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<u8>#__unchecked_set
 )
 (func $~lib/array/Array<u8>#set:length (; 78 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<u8,i32>#keys (; 79 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<u8,i32>#values (; 80 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<u8,u8>#clear (; 81 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<u8,u8>#constructor (; 82 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 10
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<u8,u8>#clear
  local.get $0
 )
 (func $~lib/array/Array<u8>#get:length (; 83 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u8>#__unchecked_get (; 84 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
 )
 (func $~lib/array/Array<u8>#__get (; 85 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 512
   i32.const 464
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/map/Map<u8,u8>#find (; 86 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=4
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
 (func $~lib/map/Map<u8,u8>#rehash (; 87 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     i32.load8_u
     i32.store8
     local.get $11
     local.get $10
     i32.load8_u offset=1
     i32.store8 offset=1
     block $~lib/util/hash/HASH<u8>|inlined.5 (result i32)
      local.get $10
      i32.load8_u
      local.set $12
      local.get $12
      call $~lib/util/hash/hash8
      br $~lib/util/hash/HASH<u8>|inlined.5
     end
     local.get $1
     i32.and
     local.set $12
     local.get $3
     local.get $12
     i32.const 4
     i32.mul
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.load
     i32.store offset=4
     local.get $13
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
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $13
  local.get $5
  local.tee $9
  local.get $13
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u8,u8>#set (; 88 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u8>|inlined.4 (result i32)
   local.get $1
   local.set $3
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
   i32.store8 offset=1
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
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $6
   i32.const 8
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store8
   local.get $5
   local.get $2
   i32.store8 offset=1
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=4
   local.get $6
   local.get $5
   i32.store
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<u8,u8>#get:size (; 89 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u8,i32>#delete (; 90 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u8>|inlined.6 (result i32)
   local.get $1
   local.set $2
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
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
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
 (func $std/map/testNumeric<u8,i32> (; 91 ;)
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    local.get $9
    local.get $9
    call $~lib/map/Map<u8,u8>#set
    call $~lib/rt/pure/__release
    local.get $6
    local.get $10
    i32.const 20
    i32.sub
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    call $~lib/rt/pure/__release
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
   i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $7
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i16,i32>#clear (; 92 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<i16,i32>#constructor (; 93 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 11
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<i16,i32>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash16 (; 94 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<i16,i32>#find (; 95 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=8
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
 (func $~lib/map/Map<i16,i32>#has (; 96 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i16>|inlined.0 (result i32)
   local.get $1
   local.set $2
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
 (func $~lib/map/Map<i16,i32>#rehash (; 97 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     i32.load16_s
     i32.store16
     local.get $11
     local.get $10
     i32.load offset=4
     i32.store offset=4
     block $~lib/util/hash/HASH<i16>|inlined.2 (result i32)
      local.get $10
      i32.load16_s
      local.set $12
      local.get $12
      call $~lib/util/hash/hash16
      br $~lib/util/hash/HASH<i16>|inlined.2
     end
     local.get $1
     i32.and
     local.set $12
     local.get $3
     local.get $12
     i32.const 4
     i32.mul
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.load
     i32.store offset=8
     local.get $13
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
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $13
  local.get $5
  local.tee $9
  local.get $13
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i16,i32>#set (; 98 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<i16>|inlined.1 (result i32)
   local.get $1
   local.set $3
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
   i32.store offset=4
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
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store16
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<i16,i32>#get (; 99 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i16>|inlined.3 (result i32)
   local.get $1
   local.set $2
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
   i32.const 352
   i32.const 416
   i32.const 111
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<i16,i32>#get:size (; 100 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<i16>#constructor (; 101 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 536870904
  i32.gt_u
  if
   i32.const 192
   i32.const 464
   i32.const 57
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
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 12
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<i16>#__unchecked_set (; 102 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/array/Array<i16>#__set (; 103 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 512
    i32.const 464
    i32.const 120
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
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i16>#__unchecked_set
 )
 (func $~lib/array/Array<i16>#set:length (; 104 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<i16,i32>#keys (; 105 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<i16,i32>#values (; 106 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<i16,i16>#clear (; 107 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<i16,i16>#constructor (; 108 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 13
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<i16,i16>#clear
  local.get $0
 )
 (func $~lib/array/Array<i16>#get:length (; 109 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i16>#__unchecked_get (; 110 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/array/Array<i16>#__get (; 111 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 512
   i32.const 464
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i16>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/map/Map<i16,i16>#find (; 112 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=4
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
 (func $~lib/map/Map<i16,i16>#rehash (; 113 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     i32.load16_s
     i32.store16
     local.get $11
     local.get $10
     i32.load16_s offset=2
     i32.store16 offset=2
     block $~lib/util/hash/HASH<i16>|inlined.5 (result i32)
      local.get $10
      i32.load16_s
      local.set $12
      local.get $12
      call $~lib/util/hash/hash16
      br $~lib/util/hash/HASH<i16>|inlined.5
     end
     local.get $1
     i32.and
     local.set $12
     local.get $3
     local.get $12
     i32.const 4
     i32.mul
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.load
     i32.store offset=4
     local.get $13
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
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $13
  local.get $5
  local.tee $9
  local.get $13
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i16,i16>#set (; 114 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<i16>|inlined.4 (result i32)
   local.get $1
   local.set $3
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
   i32.store16 offset=2
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
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $6
   i32.const 8
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store16
   local.get $5
   local.get $2
   i32.store16 offset=2
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=4
   local.get $6
   local.get $5
   i32.store
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<i16,i16>#get:size (; 115 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i16,i32>#delete (; 116 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i16>|inlined.6 (result i32)
   local.get $1
   local.set $2
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
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
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
 (func $std/map/testNumeric<i16,i32> (; 117 ;)
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    local.get $9
    local.get $9
    call $~lib/map/Map<i16,i16>#set
    call $~lib/rt/pure/__release
    local.get $6
    local.get $10
    i32.const 20
    i32.sub
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    call $~lib/rt/pure/__release
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
   i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $7
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u16,i32>#clear (; 118 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<u16,i32>#constructor (; 119 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 14
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<u16,i32>#clear
  local.get $0
 )
 (func $~lib/map/Map<u16,i32>#find (; 120 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=8
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
 (func $~lib/map/Map<u16,i32>#has (; 121 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u16>|inlined.0 (result i32)
   local.get $1
   local.set $2
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
 (func $~lib/map/Map<u16,i32>#rehash (; 122 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     i32.load16_u
     i32.store16
     local.get $11
     local.get $10
     i32.load offset=4
     i32.store offset=4
     block $~lib/util/hash/HASH<u16>|inlined.2 (result i32)
      local.get $10
      i32.load16_u
      local.set $12
      local.get $12
      call $~lib/util/hash/hash16
      br $~lib/util/hash/HASH<u16>|inlined.2
     end
     local.get $1
     i32.and
     local.set $12
     local.get $3
     local.get $12
     i32.const 4
     i32.mul
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.load
     i32.store offset=8
     local.get $13
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
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $13
  local.get $5
  local.tee $9
  local.get $13
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u16,i32>#set (; 123 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u16>|inlined.1 (result i32)
   local.get $1
   local.set $3
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
   i32.store offset=4
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
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store16
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<u16,i32>#get (; 124 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u16>|inlined.3 (result i32)
   local.get $1
   local.set $2
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
   i32.const 352
   i32.const 416
   i32.const 111
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<u16,i32>#get:size (; 125 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<u16>#constructor (; 126 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 536870904
  i32.gt_u
  if
   i32.const 192
   i32.const 464
   i32.const 57
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
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 15
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<u16>#__unchecked_set (; 127 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/array/Array<u16>#__set (; 128 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 512
    i32.const 464
    i32.const 120
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
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<u16>#__unchecked_set
 )
 (func $~lib/array/Array<u16>#set:length (; 129 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<u16,i32>#keys (; 130 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<u16,i32>#values (; 131 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<u16,u16>#clear (; 132 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<u16,u16>#constructor (; 133 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 16
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<u16,u16>#clear
  local.get $0
 )
 (func $~lib/array/Array<u16>#get:length (; 134 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u16>#__unchecked_get (; 135 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/array/Array<u16>#__get (; 136 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 512
   i32.const 464
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u16>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/map/Map<u16,u16>#find (; 137 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=4
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
 (func $~lib/map/Map<u16,u16>#rehash (; 138 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     i32.load16_u
     i32.store16
     local.get $11
     local.get $10
     i32.load16_u offset=2
     i32.store16 offset=2
     block $~lib/util/hash/HASH<u16>|inlined.5 (result i32)
      local.get $10
      i32.load16_u
      local.set $12
      local.get $12
      call $~lib/util/hash/hash16
      br $~lib/util/hash/HASH<u16>|inlined.5
     end
     local.get $1
     i32.and
     local.set $12
     local.get $3
     local.get $12
     i32.const 4
     i32.mul
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.load
     i32.store offset=4
     local.get $13
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
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $13
  local.get $5
  local.tee $9
  local.get $13
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u16,u16>#set (; 139 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u16>|inlined.4 (result i32)
   local.get $1
   local.set $3
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
   i32.store16 offset=2
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
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $6
   i32.const 8
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store16
   local.get $5
   local.get $2
   i32.store16 offset=2
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=4
   local.get $6
   local.get $5
   i32.store
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<u16,u16>#get:size (; 140 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u16,i32>#delete (; 141 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u16>|inlined.6 (result i32)
   local.get $1
   local.set $2
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
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
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
 (func $std/map/testNumeric<u16,i32> (; 142 ;)
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    local.get $9
    local.get $9
    call $~lib/map/Map<u16,u16>#set
    call $~lib/rt/pure/__release
    local.get $6
    local.get $10
    i32.const 20
    i32.sub
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    call $~lib/rt/pure/__release
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
   i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $7
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i32,i32>#has (; 143 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i32>|inlined.2 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.2
  end
  call $~lib/map/Map<i32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i32,i32>#get (; 144 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i32>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.3
  end
  call $~lib/map/Map<i32,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 352
   i32.const 416
   i32.const 111
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<i32,i32>#keys (; 145 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<i32,i32>#values (; 146 ;) (param $0 i32) (result i32)
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
 (func $~lib/array/Array<i32>#get:length (; 147 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/map/Map<i32,i32>#delete (; 148 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i32>|inlined.4 (result i32)
   local.get $1
   local.set $2
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
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
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
 (func $std/map/testNumeric<i32,i32> (; 149 ;)
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $7
    local.get $7
    call $~lib/map/Map<i32,i32>#set
    call $~lib/rt/pure/__release
    local.get $4
    local.get $8
    i32.const 20
    i32.sub
    local.get $8
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    call $~lib/rt/pure/__release
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
   i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $5
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u32,i32>#clear (; 150 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<u32,i32>#constructor (; 151 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 17
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<u32,i32>#clear
  local.get $0
 )
 (func $~lib/map/Map<u32,i32>#find (; 152 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=8
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
 (func $~lib/map/Map<u32,i32>#has (; 153 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u32>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.0
  end
  call $~lib/map/Map<u32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<u32,i32>#rehash (; 154 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     i32.load
     i32.store
     local.get $11
     local.get $10
     i32.load offset=4
     i32.store offset=4
     block $~lib/util/hash/HASH<u32>|inlined.2 (result i32)
      local.get $10
      i32.load
      local.set $12
      local.get $12
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<u32>|inlined.2
     end
     local.get $1
     i32.and
     local.set $12
     local.get $3
     local.get $12
     i32.const 4
     i32.mul
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.load
     i32.store offset=8
     local.get $13
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
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $13
  local.get $5
  local.tee $9
  local.get $13
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u32,i32>#set (; 155 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u32>|inlined.1 (result i32)
   local.get $1
   local.set $3
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
   i32.store offset=4
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
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<u32,i32>#get (; 156 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u32>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.3
  end
  call $~lib/map/Map<u32,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 352
   i32.const 416
   i32.const 111
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<u32,i32>#get:size (; 157 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<u32>#constructor (; 158 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 268435452
  i32.gt_u
  if
   i32.const 192
   i32.const 464
   i32.const 57
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
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 18
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<u32>#__unchecked_set (; 159 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<u32>#__set (; 160 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 512
    i32.const 464
    i32.const 120
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
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<u32>#__unchecked_set
 )
 (func $~lib/array/Array<u32>#set:length (; 161 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $0
  local.get $1
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<u32,i32>#keys (; 162 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<u32,i32>#values (; 163 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<u32,u32>#clear (; 164 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<u32,u32>#constructor (; 165 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 19
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<u32,u32>#clear
  local.get $0
 )
 (func $~lib/array/Array<u32>#get:length (; 166 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#__unchecked_get (; 167 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<u32>#__get (; 168 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 512
   i32.const 464
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/map/Map<u32,u32>#find (; 169 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=8
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
 (func $~lib/map/Map<u32,u32>#rehash (; 170 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     i32.load
     i32.store
     local.get $11
     local.get $10
     i32.load offset=4
     i32.store offset=4
     block $~lib/util/hash/HASH<u32>|inlined.5 (result i32)
      local.get $10
      i32.load
      local.set $12
      local.get $12
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<u32>|inlined.5
     end
     local.get $1
     i32.and
     local.set $12
     local.get $3
     local.get $12
     i32.const 4
     i32.mul
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.load
     i32.store offset=8
     local.get $13
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
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $13
  local.get $5
  local.tee $9
  local.get $13
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u32,u32>#set (; 171 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u32>|inlined.4 (result i32)
   local.get $1
   local.set $3
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
   i32.store offset=4
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
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<u32,u32>#get:size (; 172 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u32,i32>#delete (; 173 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u32>|inlined.6 (result i32)
   local.get $1
   local.set $2
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
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
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
 (func $std/map/testNumeric<u32,i32> (; 174 ;)
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $7
    local.get $7
    call $~lib/map/Map<u32,u32>#set
    call $~lib/rt/pure/__release
    local.get $4
    local.get $8
    i32.const 20
    i32.sub
    local.get $8
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    call $~lib/rt/pure/__release
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
   i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $5
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i64,i32>#clear (; 175 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<i64,i32>#constructor (; 176 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 20
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<i64,i32>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash64 (; 177 ;) (param $0 i64) (result i32)
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
 (func $~lib/map/Map<i64,i32>#find (; 178 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=12
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
 (func $~lib/map/Map<i64,i32>#has (; 179 ;) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i64>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<i64>|inlined.0
  end
  call $~lib/map/Map<i64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i64,i32>#rehash (; 180 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     i64.load
     i64.store
     local.get $11
     local.get $10
     i32.load offset=8
     i32.store offset=8
     block $~lib/util/hash/HASH<i64>|inlined.2 (result i32)
      local.get $10
      i64.load
      local.set $12
      local.get $12
      call $~lib/util/hash/hash64
      br $~lib/util/hash/HASH<i64>|inlined.2
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
     i32.store offset=12
     local.get $14
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
  local.tee $11
  local.get $3
  local.tee $13
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $13
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $14
  local.get $5
  local.tee $9
  local.get $14
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i64,i32>#set (; 181 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<i64>|inlined.1 (result i32)
   local.get $1
   local.set $3
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
   i32.store offset=8
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
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $7
   i32.const 16
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i64.store
   local.get $5
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=12
   local.get $7
   local.get $5
   i32.store
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<i64,i32>#get (; 182 ;) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i64>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<i64>|inlined.3
  end
  call $~lib/map/Map<i64,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 352
   i32.const 416
   i32.const 111
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
 )
 (func $~lib/map/Map<i64,i32>#get:size (; 183 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<i64>#constructor (; 184 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 134217726
  i32.gt_u
  if
   i32.const 192
   i32.const 464
   i32.const 57
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
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 21
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<i64>#__unchecked_set (; 185 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $~lib/array/Array<i64>#__set (; 186 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 512
    i32.const 464
    i32.const 120
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
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i64>#__unchecked_set
 )
 (func $~lib/array/Array<i64>#set:length (; 187 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $0
  local.get $1
  i32.const 3
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<i64,i32>#keys (; 188 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<i64,i32>#values (; 189 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<i64,i64>#clear (; 190 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 96
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<i64,i64>#constructor (; 191 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 22
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<i64,i64>#clear
  local.get $0
 )
 (func $~lib/array/Array<i64>#get:length (; 192 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i64>#__unchecked_get (; 193 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<i64>#__get (; 194 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 512
   i32.const 464
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i64>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/map/Map<i64,i64>#find (; 195 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=16
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
 (func $~lib/map/Map<i64,i64>#rehash (; 196 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     i64.load
     i64.store
     local.get $11
     local.get $10
     i64.load offset=8
     i64.store offset=8
     block $~lib/util/hash/HASH<i64>|inlined.5 (result i32)
      local.get $10
      i64.load
      local.set $12
      local.get $12
      call $~lib/util/hash/hash64
      br $~lib/util/hash/HASH<i64>|inlined.5
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
     i32.store offset=16
     local.get $14
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
  local.tee $11
  local.get $3
  local.tee $13
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $13
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $14
  local.get $5
  local.tee $9
  local.get $14
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i64,i64>#set (; 197 ;) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<i64>|inlined.4 (result i32)
   local.get $1
   local.set $3
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
   i64.store offset=8
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
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $7
   i32.const 24
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i64.store
   local.get $5
   local.get $2
   i64.store offset=8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=16
   local.get $7
   local.get $5
   i32.store
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<i64,i64>#get:size (; 198 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i64,i32>#delete (; 199 ;) (param $0 i32) (param $1 i64) (result i32)
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
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
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
 (func $std/map/testNumeric<i64,i32> (; 200 ;)
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $1
    local.get $1
    call $~lib/map/Map<i64,i64>#set
    call $~lib/rt/pure/__release
    local.get $5
    local.get $8
    i32.const 20
    i32.sub
    local.get $8
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    call $~lib/rt/pure/__release
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
   i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u64,i32>#clear (; 201 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<u64,i32>#constructor (; 202 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 23
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<u64,i32>#clear
  local.get $0
 )
 (func $~lib/map/Map<u64,i32>#find (; 203 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=12
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
 (func $~lib/map/Map<u64,i32>#has (; 204 ;) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u64>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<u64>|inlined.0
  end
  call $~lib/map/Map<u64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<u64,i32>#rehash (; 205 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     i64.load
     i64.store
     local.get $11
     local.get $10
     i32.load offset=8
     i32.store offset=8
     block $~lib/util/hash/HASH<u64>|inlined.2 (result i32)
      local.get $10
      i64.load
      local.set $12
      local.get $12
      call $~lib/util/hash/hash64
      br $~lib/util/hash/HASH<u64>|inlined.2
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
     i32.store offset=12
     local.get $14
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
  local.tee $11
  local.get $3
  local.tee $13
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $13
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $14
  local.get $5
  local.tee $9
  local.get $14
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u64,i32>#set (; 206 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<u64>|inlined.1 (result i32)
   local.get $1
   local.set $3
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
   i32.store offset=8
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
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $7
   i32.const 16
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i64.store
   local.get $5
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=12
   local.get $7
   local.get $5
   i32.store
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<u64,i32>#get (; 207 ;) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u64>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<u64>|inlined.3
  end
  call $~lib/map/Map<u64,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 352
   i32.const 416
   i32.const 111
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
 )
 (func $~lib/map/Map<u64,i32>#get:size (; 208 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<u64>#constructor (; 209 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 134217726
  i32.gt_u
  if
   i32.const 192
   i32.const 464
   i32.const 57
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
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 24
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<u64>#__unchecked_set (; 210 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $~lib/array/Array<u64>#__set (; 211 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 512
    i32.const 464
    i32.const 120
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
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<u64>#__unchecked_set
 )
 (func $~lib/array/Array<u64>#set:length (; 212 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $0
  local.get $1
  i32.const 3
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<u64,i32>#keys (; 213 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<u64,i32>#values (; 214 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<u64,u64>#clear (; 215 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 96
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<u64,u64>#constructor (; 216 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 25
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<u64,u64>#clear
  local.get $0
 )
 (func $~lib/array/Array<u64>#get:length (; 217 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u64>#__unchecked_get (; 218 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<u64>#__get (; 219 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 512
   i32.const 464
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/map/Map<u64,u64>#find (; 220 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=16
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
 (func $~lib/map/Map<u64,u64>#rehash (; 221 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     i64.load
     i64.store
     local.get $11
     local.get $10
     i64.load offset=8
     i64.store offset=8
     block $~lib/util/hash/HASH<u64>|inlined.5 (result i32)
      local.get $10
      i64.load
      local.set $12
      local.get $12
      call $~lib/util/hash/hash64
      br $~lib/util/hash/HASH<u64>|inlined.5
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
     i32.store offset=16
     local.get $14
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
  local.tee $11
  local.get $3
  local.tee $13
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $13
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $14
  local.get $5
  local.tee $9
  local.get $14
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u64,u64>#set (; 222 ;) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<u64>|inlined.4 (result i32)
   local.get $1
   local.set $3
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
   i64.store offset=8
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
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $7
   i32.const 24
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i64.store
   local.get $5
   local.get $2
   i64.store offset=8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=16
   local.get $7
   local.get $5
   i32.store
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<u64,u64>#get:size (; 223 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u64,i32>#delete (; 224 ;) (param $0 i32) (param $1 i64) (result i32)
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
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
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
 (func $std/map/testNumeric<u64,i32> (; 225 ;)
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $1
    local.get $1
    call $~lib/map/Map<u64,u64>#set
    call $~lib/rt/pure/__release
    local.get $5
    local.get $8
    i32.const 20
    i32.sub
    local.get $8
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    call $~lib/rt/pure/__release
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
   i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<f32,i32>#clear (; 226 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<f32,i32>#constructor (; 227 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 26
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<f32,i32>#clear
  local.get $0
 )
 (func $~lib/map/Map<f32,i32>#find (; 228 ;) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=8
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
 (func $~lib/map/Map<f32,i32>#has (; 229 ;) (param $0 i32) (param $1 f32) (result i32)
  (local $2 f32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f32>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.0
  end
  call $~lib/map/Map<f32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<f32,i32>#rehash (; 230 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     f32.load
     f32.store
     local.get $11
     local.get $10
     i32.load offset=4
     i32.store offset=4
     block $~lib/util/hash/HASH<f32>|inlined.2 (result i32)
      local.get $10
      f32.load
      local.set $12
      local.get $12
      i32.reinterpret_f32
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<f32>|inlined.2
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
     i32.store offset=8
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
  local.tee $11
  local.get $3
  local.tee $13
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $13
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $14
  local.get $5
  local.tee $9
  local.get $14
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<f32,i32>#set (; 231 ;) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<f32>|inlined.1 (result i32)
   local.get $1
   local.set $3
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
   i32.store offset=4
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
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $7
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   f32.store
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=8
   local.get $7
   local.get $5
   i32.store
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<f32,i32>#get (; 232 ;) (param $0 i32) (param $1 f32) (result i32)
  (local $2 f32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f32>|inlined.3 (result i32)
   local.get $1
   local.set $2
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
   i32.const 352
   i32.const 416
   i32.const 111
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<f32,i32>#get:size (; 233 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<f32>#constructor (; 234 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 268435452
  i32.gt_u
  if
   i32.const 192
   i32.const 464
   i32.const 57
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
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 27
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<f32>#__unchecked_set (; 235 ;) (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  f32.store
 )
 (func $~lib/array/Array<f32>#__set (; 236 ;) (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 512
    i32.const 464
    i32.const 120
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
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<f32>#__unchecked_set
 )
 (func $~lib/array/Array<f32>#set:length (; 237 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $0
  local.get $1
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<f32,i32>#keys (; 238 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<f32,i32>#values (; 239 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<f32,f32>#clear (; 240 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<f32,f32>#constructor (; 241 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 28
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<f32,f32>#clear
  local.get $0
 )
 (func $~lib/array/Array<f32>#get:length (; 242 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f32>#__unchecked_get (; 243 ;) (param $0 i32) (param $1 i32) (result f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $~lib/array/Array<f32>#__get (; 244 ;) (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 512
   i32.const 464
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/map/Map<f32,f32>#find (; 245 ;) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=8
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
 (func $~lib/map/Map<f32,f32>#rehash (; 246 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     f32.load
     f32.store
     local.get $11
     local.get $10
     f32.load offset=4
     f32.store offset=4
     block $~lib/util/hash/HASH<f32>|inlined.5 (result i32)
      local.get $10
      f32.load
      local.set $12
      local.get $12
      i32.reinterpret_f32
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<f32>|inlined.5
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
     i32.store offset=8
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
  local.tee $11
  local.get $3
  local.tee $13
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $13
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $14
  local.get $5
  local.tee $9
  local.get $14
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<f32,f32>#set (; 247 ;) (param $0 i32) (param $1 f32) (param $2 f32) (result i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<f32>|inlined.4 (result i32)
   local.get $1
   local.set $3
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
   f32.store offset=4
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
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $7
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   f32.store
   local.get $5
   local.get $2
   f32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=8
   local.get $7
   local.get $5
   i32.store
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<f32,f32>#get:size (; 248 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<f32,i32>#delete (; 249 ;) (param $0 i32) (param $1 f32) (result i32)
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
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
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
 (func $std/map/testNumeric<f32,i32> (; 250 ;)
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $1
    local.get $1
    call $~lib/map/Map<f32,f32>#set
    call $~lib/rt/pure/__release
    local.get $5
    local.get $8
    i32.const 20
    i32.sub
    local.get $8
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    call $~lib/rt/pure/__release
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
   i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<f64,i32>#clear (; 251 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<f64,i32>#constructor (; 252 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 29
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<f64,i32>#clear
  local.get $0
 )
 (func $~lib/map/Map<f64,i32>#find (; 253 ;) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=12
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
 (func $~lib/map/Map<f64,i32>#has (; 254 ;) (param $0 i32) (param $1 f64) (result i32)
  (local $2 f64)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f64>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.0
  end
  call $~lib/map/Map<f64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<f64,i32>#rehash (; 255 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     f64.load
     f64.store
     local.get $11
     local.get $10
     i32.load offset=8
     i32.store offset=8
     block $~lib/util/hash/HASH<f64>|inlined.2 (result i32)
      local.get $10
      f64.load
      local.set $12
      local.get $12
      i64.reinterpret_f64
      call $~lib/util/hash/hash64
      br $~lib/util/hash/HASH<f64>|inlined.2
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
     i32.store offset=12
     local.get $14
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
  local.tee $11
  local.get $3
  local.tee $13
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $13
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $14
  local.get $5
  local.tee $9
  local.get $14
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<f64,i32>#set (; 256 ;) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<f64>|inlined.1 (result i32)
   local.get $1
   local.set $3
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
   i32.store offset=8
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
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $7
   i32.const 16
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   f64.store
   local.get $5
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=12
   local.get $7
   local.get $5
   i32.store
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<f64,i32>#get (; 257 ;) (param $0 i32) (param $1 f64) (result i32)
  (local $2 f64)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f64>|inlined.3 (result i32)
   local.get $1
   local.set $2
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
   i32.const 352
   i32.const 416
   i32.const 111
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
 )
 (func $~lib/map/Map<f64,i32>#get:size (; 258 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<f64>#constructor (; 259 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 134217726
  i32.gt_u
  if
   i32.const 192
   i32.const 464
   i32.const 57
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
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 30
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<f64>#__unchecked_set (; 260 ;) (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  f64.store
 )
 (func $~lib/array/Array<f64>#__set (; 261 ;) (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 512
    i32.const 464
    i32.const 120
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
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<f64>#__unchecked_set
 )
 (func $~lib/array/Array<f64>#set:length (; 262 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $0
  local.get $1
  i32.const 3
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<f64,i32>#keys (; 263 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<f64,i32>#values (; 264 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<f64,f64>#clear (; 265 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 96
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<f64,f64>#constructor (; 266 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 31
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/map/Map<f64,f64>#clear
  local.get $0
 )
 (func $~lib/array/Array<f64>#get:length (; 267 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f64>#__unchecked_get (; 268 ;) (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/array/Array<f64>#__get (; 269 ;) (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 512
   i32.const 464
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/map/Map<f64,f64>#find (; 270 ;) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $3
    i32.load offset=16
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
 (func $~lib/map/Map<f64,f64>#rehash (; 271 ;) (param $0 i32) (param $1 i32)
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
     local.get $11
     local.get $10
     f64.load
     f64.store
     local.get $11
     local.get $10
     f64.load offset=8
     f64.store offset=8
     block $~lib/util/hash/HASH<f64>|inlined.5 (result i32)
      local.get $10
      f64.load
      local.set $12
      local.get $12
      i64.reinterpret_f64
      call $~lib/util/hash/hash64
      br $~lib/util/hash/HASH<f64>|inlined.5
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
     i32.store offset=16
     local.get $14
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
  local.tee $11
  local.get $3
  local.tee $13
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $13
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $14
  local.get $5
  local.tee $9
  local.get $14
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<f64,f64>#set (; 272 ;) (param $0 i32) (param $1 f64) (param $2 f64) (result i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<f64>|inlined.4 (result i32)
   local.get $1
   local.set $3
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
   f64.store offset=8
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
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $7
   i32.const 24
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   f64.store
   local.get $5
   local.get $2
   f64.store offset=8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
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
   i32.store offset=16
   local.get $7
   local.get $5
   i32.store
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<f64,f64>#get:size (; 273 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<f64,i32>#delete (; 274 ;) (param $0 i32) (param $1 f64) (result i32)
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
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
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
 (func $std/map/testNumeric<f64,i32> (; 275 ;)
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $1
    local.get $1
    call $~lib/map/Map<f64,f64>#set
    call $~lib/rt/pure/__release
    local.get $5
    local.get $8
    i32.const 20
    i32.sub
    local.get $8
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    call $~lib/rt/pure/__release
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
   i32.const 304
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
   i32.const 304
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
     i32.const 304
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
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
     i32.const 304
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
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 304
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
     i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:std/map (; 276 ;)
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
 )
 (func $~start (; 277 ;)
  call $start:std/map
 )
 (func $~lib/rt/pure/__collect (; 278 ;)
  return
 )
 (func $~lib/rt/pure/decrement (; 279 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  local.get $0
  call $~lib/rt/rtrace/ondecrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 122
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 126
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  else
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 136
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 268435455
   i32.const -1
   i32.xor
   i32.and
   local.get $2
   i32.const 1
   i32.sub
   i32.or
   i32.store offset=4
  end
 )
 (func $~lib/rt/pure/__visit (; 280 ;) (param $0 i32) (param $1 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.lt_u
  if
   return
  end
  local.get $1
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 69
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/pure/decrement
 )
 (func $~lib/map/Map<i8,i32>#__visit_impl (; 281 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<i8>#__visit_impl (; 282 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<i32>#__visit_impl (; 283 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<i8,i8>#__visit_impl (; 284 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<i32,i32>#__visit_impl (; 285 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<u8,i32>#__visit_impl (; 286 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<u8>#__visit_impl (; 287 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<u8,u8>#__visit_impl (; 288 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<i16,i32>#__visit_impl (; 289 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<i16>#__visit_impl (; 290 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<i16,i16>#__visit_impl (; 291 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<u16,i32>#__visit_impl (; 292 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<u16>#__visit_impl (; 293 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<u16,u16>#__visit_impl (; 294 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<u32,i32>#__visit_impl (; 295 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<u32>#__visit_impl (; 296 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<u32,u32>#__visit_impl (; 297 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<i64,i32>#__visit_impl (; 298 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<i64>#__visit_impl (; 299 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<i64,i64>#__visit_impl (; 300 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<u64,i32>#__visit_impl (; 301 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<u64>#__visit_impl (; 302 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<u64,u64>#__visit_impl (; 303 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<f32,i32>#__visit_impl (; 304 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<f32>#__visit_impl (; 305 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<f32,f32>#__visit_impl (; 306 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<f64,i32>#__visit_impl (; 307 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<f64>#__visit_impl (; 308 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<f64,f64>#__visit_impl (; 309 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/rt/__visit_members (; 310 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $switch$1$default
   block $switch$1$case$33
    block $switch$1$case$32
     block $switch$1$case$31
      block $switch$1$case$30
       block $switch$1$case$29
        block $switch$1$case$28
         block $switch$1$case$27
          block $switch$1$case$26
           block $switch$1$case$25
            block $switch$1$case$24
             block $switch$1$case$23
              block $switch$1$case$22
               block $switch$1$case$21
                block $switch$1$case$20
                 block $switch$1$case$19
                  block $switch$1$case$18
                   block $switch$1$case$17
                    block $switch$1$case$16
                     block $switch$1$case$15
                      block $switch$1$case$14
                       block $switch$1$case$13
                        block $switch$1$case$12
                         block $switch$1$case$11
                          block $switch$1$case$10
                           block $switch$1$case$9
                            block $switch$1$case$8
                             block $switch$1$case$7
                              block $switch$1$case$6
                               block $switch$1$case$5
                                block $switch$1$case$4
                                 block $switch$1$case$2
                                  local.get $0
                                  i32.const 8
                                  i32.sub
                                  i32.load
                                  br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$5 $switch$1$case$6 $switch$1$case$7 $switch$1$case$8 $switch$1$case$9 $switch$1$case$10 $switch$1$case$11 $switch$1$case$12 $switch$1$case$13 $switch$1$case$14 $switch$1$case$15 $switch$1$case$16 $switch$1$case$17 $switch$1$case$18 $switch$1$case$19 $switch$1$case$20 $switch$1$case$21 $switch$1$case$22 $switch$1$case$23 $switch$1$case$24 $switch$1$case$25 $switch$1$case$26 $switch$1$case$27 $switch$1$case$28 $switch$1$case$29 $switch$1$case$30 $switch$1$case$31 $switch$1$case$32 $switch$1$case$33 $switch$1$default
                                 end
                                 return
                                end
                                local.get $0
                                i32.load
                                local.tee $2
                                if
                                 local.get $2
                                 local.get $1
                                 call $~lib/rt/pure/__visit
                                end
                                return
                               end
                               local.get $0
                               local.get $1
                               call $~lib/map/Map<i8,i32>#__visit_impl
                               return
                              end
                              local.get $0
                              local.get $1
                              call $~lib/array/Array<i8>#__visit_impl
                              return
                             end
                             local.get $0
                             local.get $1
                             call $~lib/array/Array<i32>#__visit_impl
                             return
                            end
                            local.get $0
                            local.get $1
                            call $~lib/map/Map<i8,i8>#__visit_impl
                            return
                           end
                           local.get $0
                           local.get $1
                           call $~lib/map/Map<i32,i32>#__visit_impl
                           return
                          end
                          local.get $0
                          local.get $1
                          call $~lib/map/Map<u8,i32>#__visit_impl
                          return
                         end
                         local.get $0
                         local.get $1
                         call $~lib/array/Array<u8>#__visit_impl
                         return
                        end
                        local.get $0
                        local.get $1
                        call $~lib/map/Map<u8,u8>#__visit_impl
                        return
                       end
                       local.get $0
                       local.get $1
                       call $~lib/map/Map<i16,i32>#__visit_impl
                       return
                      end
                      local.get $0
                      local.get $1
                      call $~lib/array/Array<i16>#__visit_impl
                      return
                     end
                     local.get $0
                     local.get $1
                     call $~lib/map/Map<i16,i16>#__visit_impl
                     return
                    end
                    local.get $0
                    local.get $1
                    call $~lib/map/Map<u16,i32>#__visit_impl
                    return
                   end
                   local.get $0
                   local.get $1
                   call $~lib/array/Array<u16>#__visit_impl
                   return
                  end
                  local.get $0
                  local.get $1
                  call $~lib/map/Map<u16,u16>#__visit_impl
                  return
                 end
                 local.get $0
                 local.get $1
                 call $~lib/map/Map<u32,i32>#__visit_impl
                 return
                end
                local.get $0
                local.get $1
                call $~lib/array/Array<u32>#__visit_impl
                return
               end
               local.get $0
               local.get $1
               call $~lib/map/Map<u32,u32>#__visit_impl
               return
              end
              local.get $0
              local.get $1
              call $~lib/map/Map<i64,i32>#__visit_impl
              return
             end
             local.get $0
             local.get $1
             call $~lib/array/Array<i64>#__visit_impl
             return
            end
            local.get $0
            local.get $1
            call $~lib/map/Map<i64,i64>#__visit_impl
            return
           end
           local.get $0
           local.get $1
           call $~lib/map/Map<u64,i32>#__visit_impl
           return
          end
          local.get $0
          local.get $1
          call $~lib/array/Array<u64>#__visit_impl
          return
         end
         local.get $0
         local.get $1
         call $~lib/map/Map<u64,u64>#__visit_impl
         return
        end
        local.get $0
        local.get $1
        call $~lib/map/Map<f32,i32>#__visit_impl
        return
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<f32>#__visit_impl
       return
      end
      local.get $0
      local.get $1
      call $~lib/map/Map<f32,f32>#__visit_impl
      return
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#__visit_impl
     return
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<f64>#__visit_impl
    return
   end
   local.get $0
   local.get $1
   call $~lib/map/Map<f64,f64>#__visit_impl
   return
  end
  unreachable
 )
)
