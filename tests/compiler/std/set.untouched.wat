(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i32_i32_f32_=>_none (func (param i32 i32 f32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_f32_=>_i32 (func (param i32 f32) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_f32_=>_none (func (param i32 f32)))
 (type $i32_f64_=>_none (func (param i32 f64)))
 (type $i32_f32_i32_=>_i32 (func (param i32 f32 i32) (result i32)))
 (type $i32_f64_i32_=>_i32 (func (param i32 f64 i32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (memory $0 1)
 (data (i32.const 8) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 56) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 112) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 160) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 208) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 264) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 320) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (data (i32.const 360) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00s\00t\00d\00/\00s\00e\00t\00.\00t\00s\00")
 (data (i32.const 400) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 448) "\17\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\004\04\00\00\00\00\00\003\04\00\00\02\00\00\004\00\00\00\00\00\00\003\00\00\00\02\00\00\00T\04\00\00\00\00\00\00S\04\00\00\02\00\00\00T\00\00\00\00\00\00\00S\00\00\00\02\00\00\00\94\04\00\00\00\00\00\00\93\04\00\00\02\00\00\00\94\00\00\00\00\00\00\00\93\00\00\00\02\00\00\00\14\05\00\00\00\00\00\00\13\05\00\00\02\00\00\00\14\01\00\00\00\00\00\00\13\01\00\00\02\00\00\00\94\0c\00\00\00\00\00\00\93\0c\00\00\02\00\00\00\14\0d\00\00\00\00\00\00\13\0d\00\00\02\00\00\00")
 (table $0 1 funcref)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/gc/gc.auto (mut i32) (i32.const 1))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 448))
 (global $~lib/heap/__heap_base i32 (i32.const 636))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/rt/tlsf/removeBlock (; 5 ;) (param $0 i32) (param $1 i32)
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
   i32.const 24
   i32.const 277
   i32.const 13
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
   i32.const 24
   i32.const 279
   i32.const 13
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
   i32.const 24
   i32.const 292
   i32.const 13
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
 (func $~lib/rt/tlsf/insertBlock (; 6 ;) (param $0 i32) (param $1 i32)
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
   i32.const 24
   i32.const 205
   i32.const 13
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
   i32.const 24
   i32.const 207
   i32.const 13
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
    i32.const 24
    i32.const 228
    i32.const 15
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
   i32.const 24
   i32.const 243
   i32.const 13
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
   i32.const 24
   i32.const 244
   i32.const 13
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
   i32.const 24
   i32.const 260
   i32.const 13
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
 (func $~lib/rt/tlsf/addMemory (; 7 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 24
   i32.const 386
   i32.const 4
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
    i32.const 24
    i32.const 396
    i32.const 15
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
    i32.const 24
    i32.const 408
    i32.const 4
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
 (func $~lib/rt/tlsf/initializeRoot (; 8 ;)
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
  global.get $~lib/heap/__heap_base
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
  i32.store
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 23
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $3
    local.set $7
    local.get $5
    local.set $6
    i32.const 0
    local.set $4
    local.get $7
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store offset=4
    block $break|1
     i32.const 0
     local.set $7
     loop $loop|1
      local.get $7
      i32.const 16
      i32.lt_u
      i32.eqz
      br_if $break|1
      local.get $3
      local.set $9
      local.get $5
      local.set $8
      local.get $7
      local.set $6
      i32.const 0
      local.set $4
      local.get $9
      local.get $8
      i32.const 4
      i32.shl
      local.get $6
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $4
      i32.store offset=96
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $loop|1
     end
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.get $0
  i32.const 1572
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (; 9 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 72
   i32.const 24
   i32.const 457
   i32.const 29
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
 (func $~lib/rt/tlsf/searchBlock (; 10 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 24
   i32.const 338
   i32.const 13
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
     i32.const 24
     i32.const 351
     i32.const 17
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
 (func $~lib/rt/pure/markGray (; 11 ;) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 268435456
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 2
   call $~lib/rt/__visit_members
  end
 )
 (func $~lib/rt/tlsf/freeBlock (; 12 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 563
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
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
 (func $~lib/rt/pure/scanBlack (; 13 ;) (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1879048192
  i32.const -1
  i32.xor
  i32.and
  i32.const 0
  i32.or
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.add
  i32.const 4
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/pure/scan (; 14 ;) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.eq
  if
   local.get $1
   i32.const 268435455
   i32.and
   i32.const 0
   i32.gt_u
   if
    local.get $0
    call $~lib/rt/pure/scanBlack
   else
    local.get $0
    local.get $1
    i32.const 1879048192
    i32.const -1
    i32.xor
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
    local.get $0
    i32.const 16
    i32.add
    i32.const 3
    call $~lib/rt/__visit_members
   end
  end
 )
 (func $~lib/rt/pure/collectWhite (; 15 ;) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 536870912
  i32.eq
  if (result i32)
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 0
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 5
   call $~lib/rt/__visit_members
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  end
 )
 (func $~lib/rt/pure/__collect (; 16 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  local.get $0
  local.set $1
  block $break|0
   local.get $1
   local.set $2
   global.get $~lib/rt/pure/CUR
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    i32.load offset=4
    local.set $5
    local.get $5
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $5
     i32.const 268435455
     i32.and
     i32.const 0
     i32.gt_u
    else
     i32.const 0
    end
    if
     local.get $4
     call $~lib/rt/pure/markGray
     local.get $1
     local.get $4
     i32.store
     local.get $1
     i32.const 4
     i32.add
     local.set $1
    else
     local.get $5
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.eq
     if (result i32)
      local.get $5
      i32.const 268435455
      i32.and
      i32.eqz
     else
      i32.const 0
     end
     if
      global.get $~lib/rt/tlsf/ROOT
      local.get $4
      call $~lib/rt/tlsf/freeBlock
     else
      local.get $4
      local.get $5
      i32.const -2147483648
      i32.const -1
      i32.xor
      i32.and
      i32.store offset=4
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  local.get $1
  global.set $~lib/rt/pure/CUR
  block $break|1
   local.get $0
   local.set $3
   loop $loop|1
    local.get $3
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|1
    local.get $3
    i32.load
    call $~lib/rt/pure/scan
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $loop|1
   end
   unreachable
  end
  block $break|2
   local.get $0
   local.set $3
   loop $loop|2
    local.get $3
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|2
    local.get $3
    i32.load
    local.set $2
    local.get $2
    local.get $2
    i32.load offset=4
    i32.const -2147483648
    i32.const -1
    i32.xor
    i32.and
    i32.store offset=4
    local.get $2
    call $~lib/rt/pure/collectWhite
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $loop|2
   end
   unreachable
  end
  local.get $0
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/tlsf/growMemory (; 17 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/rt/tlsf/prepareBlock (; 18 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 24
   i32.const 365
   i32.const 13
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
 (func $~lib/rt/tlsf/allocateBlock (; 19 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/tlsf/collectLock
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 486
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
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
   global.get $~lib/gc/gc.auto
   if
    i32.const 1
    global.set $~lib/rt/tlsf/collectLock
    call $~lib/rt/pure/__collect
    i32.const 0
    global.set $~lib/rt/tlsf/collectLock
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
     local.get $3
     i32.eqz
     if
      i32.const 0
      i32.const 24
      i32.const 498
      i32.const 19
      call $~lib/builtins/abort
      unreachable
     end
    end
   else
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/growMemory
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/searchBlock
    local.set $3
    local.get $3
    i32.eqz
    if
     i32.const 0
     i32.const 24
     i32.const 503
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $3
  i32.load
  i32.const -4
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 506
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
  call $~lib/rt/rtrace/onalloc
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (; 20 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.set $2
  local.get $2
  i32.eqz
  if
   call $~lib/rt/tlsf/initializeRoot
   global.get $~lib/rt/tlsf/ROOT
   local.set $2
  end
  local.get $2
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  local.set $3
  local.get $3
  local.get $1
  i32.store offset=8
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/increment (; 21 ;) (param $0 i32)
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
   i32.const 128
   i32.const 104
   i32.const 2
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
   i32.const 128
   i32.const 107
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 22 ;) (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.fill (; 23 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
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
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 1
   i32.add
   local.get $4
   i32.store8
   local.get $5
   i32.const 2
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 3
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
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
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
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
   local.set $7
   local.get $5
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 4
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 8
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 12
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 8
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 12
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 16
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 20
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 24
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 24
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 20
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 16
   i32.sub
   local.get $7
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $7
   i64.extend_i32_u
   local.get $7
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $8
   block $break|0
    loop $continue|0
     local.get $3
     i32.const 32
     i32.ge_u
     i32.eqz
     br_if $break|0
     local.get $5
     local.get $8
     i64.store
     local.get $5
     i32.const 8
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 16
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 24
     i32.add
     local.get $8
     i64.store
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $continue|0
    end
    unreachable
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 24 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 176
   i32.const 224
   i32.const 54
   i32.const 42
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
 (func $~lib/rt/__typeinfo (; 25 ;) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 280
   i32.const 336
   i32.const 22
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/util/memory/memcpy (; 26 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else
     i32.const 0
    end
    i32.eqz
    br_if $break|0
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
    br $continue|0
   end
   unreachable
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     i32.eqz
     br_if $break|1
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
     br $continue|1
    end
    unreachable
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
      block $break|3
       loop $continue|3
        local.get $2
        i32.const 17
        i32.ge_u
        i32.eqz
        br_if $break|3
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
        br $continue|3
       end
       unreachable
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
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 18
       i32.ge_u
       i32.eqz
       br_if $break|4
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
       br $continue|4
      end
      unreachable
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
    block $break|5
     loop $continue|5
      local.get $2
      i32.const 19
      i32.ge_u
      i32.eqz
      br_if $break|5
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
      br $continue|5
     end
     unreachable
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
 (func $~lib/memory/memory.copy (; 27 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
     block $break|0
      loop $continue|0
       local.get $5
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|0
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
       local.tee $6
       i32.const 1
       i32.add
       local.set $5
       local.get $6
       local.get $4
       local.tee $6
       i32.const 1
       i32.add
       local.set $4
       local.get $6
       i32.load8_u
       i32.store8
       br $continue|0
      end
      unreachable
     end
     block $break|1
      loop $continue|1
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|1
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
       br $continue|1
      end
      unreachable
     end
    end
    block $break|2
     loop $continue|2
      local.get $3
      i32.eqz
      br_if $break|2
      local.get $5
      local.tee $6
      i32.const 1
      i32.add
      local.set $5
      local.get $6
      local.get $4
      local.tee $6
      i32.const 1
      i32.add
      local.set $4
      local.get $6
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
     end
     unreachable
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
     block $break|3
      loop $continue|3
       local.get $5
       local.get $3
       i32.add
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|3
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
       br $continue|3
      end
      unreachable
     end
     block $break|4
      loop $continue|4
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|4
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
       br $continue|4
      end
      unreachable
     end
    end
    block $break|5
     loop $continue|5
      local.get $3
      i32.eqz
      br_if $break|5
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
      br $continue|5
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/rt/tlsf/__free (; 28 ;) (param $0 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 593
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
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
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 594
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/pure/growRoots (; 29 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  global.get $~lib/rt/pure/CUR
  local.get $0
  i32.sub
  local.set $1
  local.get $1
  i32.const 2
  i32.mul
  local.tee $2
  i32.const 64
  i32.const 2
  i32.shl
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  local.set $4
  local.get $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $5
  i32.const 16
  i32.sub
  call $~lib/rt/rtrace/onfree
  local.get $5
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $0
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/rtrace/onalloc
   local.get $0
   call $~lib/rt/tlsf/__free
  end
  local.get $5
  global.set $~lib/rt/pure/ROOTS
  local.get $5
  local.get $1
  i32.add
  global.set $~lib/rt/pure/CUR
  local.get $5
  local.get $4
  i32.add
  global.set $~lib/rt/pure/END
 )
 (func $~lib/rt/pure/appendRoot (; 30 ;) (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.set $1
  local.get $1
  global.get $~lib/rt/pure/END
  i32.ge_u
  if
   call $~lib/rt/pure/growRoots
   global.get $~lib/rt/pure/CUR
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/pure/decrement (; 31 ;) (param $0 i32)
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
   i32.const 128
   i32.const 115
   i32.const 13
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
   if
    global.get $~lib/rt/tlsf/ROOT
    local.get $0
    call $~lib/rt/tlsf/freeBlock
   else
    local.get $0
    i32.const -2147483648
    i32.const 0
    i32.or
    i32.const 0
    i32.or
    i32.store offset=4
   end
  else
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    i32.const 0
    i32.const 128
    i32.const 124
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/__typeinfo
   i32.const 16
   i32.and
   i32.eqz
   if
    local.get $0
    i32.const -2147483648
    i32.const 805306368
    i32.or
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
    local.get $1
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/pure/appendRoot
    end
   else
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
  end
 )
 (func $~lib/rt/pure/__release (; 32 ;) (param $0 i32)
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
 (func $~lib/set/Set<i8>#clear (; 33 ;) (param $0 i32)
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
  local.tee $1
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $2
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
 (func $~lib/set/Set<i8>#constructor (; 34 ;) (param $0 i32) (result i32)
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
  call $~lib/set/Set<i8>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash8 (; 35 ;) (param $0 i32) (result i32)
  i32.const -2128831035
  local.get $0
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/set/Set<i8>#find (; 36 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
  block $break|0
   loop $continue|0
    local.get $3
    i32.eqz
    br_if $break|0
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
    br $continue|0
   end
   unreachable
  end
  i32.const 0
 )
 (func $~lib/set/Set<i8>#has (; 37 ;) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i8>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i8>#rehash (; 38 ;) (param $0 i32) (param $1 i32)
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
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    i32.eqz
    br_if $break|0
    local.get $6
    local.set $9
    local.get $9
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $10
     local.get $10
     local.get $9
     i32.load8_s
     i32.store8
     block $~lib/util/hash/HASH<i8>|inlined.2 (result i32)
      local.get $9
      i32.load8_s
      local.set $11
      local.get $11
      call $~lib/util/hash/hash8
      br $~lib/util/hash/HASH<i8>|inlined.2
     end
     local.get $1
     i32.and
     local.set $11
     local.get $3
     local.get $11
     i32.const 4
     i32.mul
     i32.add
     local.set $12
     local.get $10
     local.get $12
     i32.load
     i32.store offset=4
     local.get $12
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
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $10
  local.get $9
  i32.load
  local.tee $12
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   local.set $10
   local.get $12
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $11
  local.get $9
  i32.load offset=8
  local.tee $10
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $10
   call $~lib/rt/pure/__release
  end
  local.get $11
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
 (func $~lib/set/Set<i8>#add (; 39 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/hash/HASH<i8>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<i8>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<i8>#find
  local.set $4
  local.get $4
  i32.eqz
  if
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
    call $~lib/set/Set<i8>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $2
   i32.const 8
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i32.store8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $2
   local.get $4
   local.get $2
   i32.load
   i32.store offset=4
   local.get $2
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<i8>#get:size (; 40 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 41 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 176
   i32.const 224
   i32.const 23
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
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
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<i8>#constructor (; 42 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 4
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 43 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 1
  i32.and
  i32.eqz
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
   i32.const 24
   i32.const 521
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
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
  call $~lib/rt/tlsf/allocateBlock
  local.set $8
  local.get $8
  local.get $1
  i32.load offset=8
  i32.store offset=8
  local.get $8
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  local.get $4
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $1
  call $~lib/rt/rtrace/onfree
  local.get $8
 )
 (func $~lib/rt/tlsf/__realloc (; 44 ;) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 585
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
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
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/array/ensureSize (; 45 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 176
    i32.const 416
    i32.const 14
    i32.const 47
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
    call $~lib/rt/pure/__retain
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
 (func $~lib/array/Array<i8>#__unchecked_set (; 46 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/array/Array<i8>#__set (; 47 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 280
    i32.const 416
    i32.const 109
    i32.const 21
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
 (func $~lib/set/Set<i8>#values (; 48 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $5
    i32.const 8
    i32.mul
    i32.add
    local.set $6
    local.get $6
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $7
     i32.const 1
     i32.add
     local.set $4
     local.get $7
     local.get $6
     i32.load8_s
     call $~lib/array/Array<i8>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $~lib/array/Array<i8>#get:length (; 49 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i8>#__unchecked_get (; 50 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i8>#__get (; 51 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 280
   i32.const 416
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/set/Set<i8>#delete (; 52 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  call $~lib/set/Set<i8>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   call $~lib/set/Set<i8>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<i8> (; 53 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  call $~lib/set/Set<i8>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/set/Set<i8>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i8>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<i8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i32.const 50
   local.set $1
   loop $loop|1
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $0
    local.get $1
    call $~lib/set/Set<i8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i8>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<i8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|1
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#values
  local.set $1
  i32.const 0
  call $~lib/set/Set<i8>#constructor
  local.set $2
  block $break|2
   i32.const 0
   local.set $3
   loop $loop|2
    local.get $3
    local.get $1
    call $~lib/array/Array<i8>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|2
    local.get $0
    local.get $1
    local.get $3
    call $~lib/array/Array<i8>#__get
    call $~lib/set/Set<i8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    local.get $1
    local.get $3
    call $~lib/array/Array<i8>#__get
    call $~lib/set/Set<i8>#add
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|2
   end
   unreachable
  end
  local.get $2
  call $~lib/set/Set<i8>#get:size
  local.get $0
  call $~lib/set/Set<i8>#get:size
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $3
   loop $loop|3
    local.get $3
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|3
    local.get $0
    local.get $3
    call $~lib/set/Set<i8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<i8>#delete
    drop
    local.get $0
    local.get $3
    call $~lib/set/Set<i8>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|3
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|4
   i32.const 0
   local.set $3
   loop $loop|4
    local.get $3
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|4
    local.get $0
    local.get $3
    call $~lib/set/Set<i8>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<i8>#add
    local.get $0
    local.get $3
    call $~lib/set/Set<i8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<i8>#delete
    drop
    local.get $0
    local.get $3
    call $~lib/set/Set<i8>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|4
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#clear
  local.get $0
  call $~lib/set/Set<i8>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<u8>#clear (; 54 ;) (param $0 i32)
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
  local.tee $1
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $2
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
 (func $~lib/set/Set<u8>#constructor (; 55 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
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
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  call $~lib/set/Set<u8>#clear
  local.get $0
 )
 (func $~lib/set/Set<u8>#find (; 56 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
  block $break|0
   loop $continue|0
    local.get $3
    i32.eqz
    br_if $break|0
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
    br $continue|0
   end
   unreachable
  end
  i32.const 0
 )
 (func $~lib/set/Set<u8>#has (; 57 ;) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<u8>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u8>#rehash (; 58 ;) (param $0 i32) (param $1 i32)
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
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    i32.eqz
    br_if $break|0
    local.get $6
    local.set $9
    local.get $9
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $10
     local.get $10
     local.get $9
     i32.load8_u
     i32.store8
     block $~lib/util/hash/HASH<u8>|inlined.2 (result i32)
      local.get $9
      i32.load8_u
      local.set $11
      local.get $11
      call $~lib/util/hash/hash8
      br $~lib/util/hash/HASH<u8>|inlined.2
     end
     local.get $1
     i32.and
     local.set $11
     local.get $3
     local.get $11
     i32.const 4
     i32.mul
     i32.add
     local.set $12
     local.get $10
     local.get $12
     i32.load
     i32.store offset=4
     local.get $12
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
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $10
  local.get $9
  i32.load
  local.tee $12
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   local.set $10
   local.get $12
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $11
  local.get $9
  i32.load offset=8
  local.tee $10
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $10
   call $~lib/rt/pure/__release
  end
  local.get $11
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
 (func $~lib/set/Set<u8>#add (; 59 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/hash/HASH<u8>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 255
   i32.and
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<u8>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<u8>#find
  local.set $4
  local.get $4
  i32.eqz
  if
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
    call $~lib/set/Set<u8>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $2
   i32.const 8
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i32.store8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $2
   local.get $4
   local.get $2
   i32.load
   i32.store offset=4
   local.get $2
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<u8>#get:size (; 60 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<u8>#constructor (; 61 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 6
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<u8>#__unchecked_set (; 62 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/array/Array<u8>#__set (; 63 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 280
    i32.const 416
    i32.const 109
    i32.const 21
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
 (func $~lib/set/Set<u8>#values (; 64 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $5
    i32.const 8
    i32.mul
    i32.add
    local.set $6
    local.get $6
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $7
     i32.const 1
     i32.add
     local.set $4
     local.get $7
     local.get $6
     i32.load8_u
     call $~lib/array/Array<u8>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $~lib/array/Array<u8>#get:length (; 65 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u8>#__unchecked_get (; 66 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
 )
 (func $~lib/array/Array<u8>#__get (; 67 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 280
   i32.const 416
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/set/Set<u8>#delete (; 68 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  call $~lib/set/Set<u8>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   call $~lib/set/Set<u8>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<u8> (; 69 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  call $~lib/set/Set<u8>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/set/Set<u8>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u8>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<u8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i32.const 50
   local.set $1
   loop $loop|1
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|1
    local.get $0
    local.get $1
    call $~lib/set/Set<u8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u8>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<u8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|1
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u8>#values
  local.set $1
  i32.const 0
  call $~lib/set/Set<u8>#constructor
  local.set $2
  block $break|2
   i32.const 0
   local.set $3
   loop $loop|2
    local.get $3
    local.get $1
    call $~lib/array/Array<u8>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|2
    local.get $0
    local.get $1
    local.get $3
    call $~lib/array/Array<u8>#__get
    call $~lib/set/Set<u8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    local.get $1
    local.get $3
    call $~lib/array/Array<u8>#__get
    call $~lib/set/Set<u8>#add
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|2
   end
   unreachable
  end
  local.get $2
  call $~lib/set/Set<u8>#get:size
  local.get $0
  call $~lib/set/Set<u8>#get:size
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $3
   loop $loop|3
    local.get $3
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|3
    local.get $0
    local.get $3
    call $~lib/set/Set<u8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<u8>#delete
    drop
    local.get $0
    local.get $3
    call $~lib/set/Set<u8>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|3
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|4
   i32.const 0
   local.set $3
   loop $loop|4
    local.get $3
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|4
    local.get $0
    local.get $3
    call $~lib/set/Set<u8>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<u8>#add
    local.get $0
    local.get $3
    call $~lib/set/Set<u8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<u8>#delete
    drop
    local.get $0
    local.get $3
    call $~lib/set/Set<u8>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|4
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u8>#clear
  local.get $0
  call $~lib/set/Set<u8>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<i16>#clear (; 70 ;) (param $0 i32)
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
  local.tee $1
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $2
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
 (func $~lib/set/Set<i16>#constructor (; 71 ;) (param $0 i32) (result i32)
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
  call $~lib/set/Set<i16>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash16 (; 72 ;) (param $0 i32) (result i32)
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
 (func $~lib/set/Set<i16>#find (; 73 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
  block $break|0
   loop $continue|0
    local.get $3
    i32.eqz
    br_if $break|0
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
    br $continue|0
   end
   unreachable
  end
  i32.const 0
 )
 (func $~lib/set/Set<i16>#has (; 74 ;) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i16>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i16>#rehash (; 75 ;) (param $0 i32) (param $1 i32)
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
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    i32.eqz
    br_if $break|0
    local.get $6
    local.set $9
    local.get $9
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $10
     local.get $10
     local.get $9
     i32.load16_s
     i32.store16
     block $~lib/util/hash/HASH<i16>|inlined.2 (result i32)
      local.get $9
      i32.load16_s
      local.set $11
      local.get $11
      call $~lib/util/hash/hash16
      br $~lib/util/hash/HASH<i16>|inlined.2
     end
     local.get $1
     i32.and
     local.set $11
     local.get $3
     local.get $11
     i32.const 4
     i32.mul
     i32.add
     local.set $12
     local.get $10
     local.get $12
     i32.load
     i32.store offset=4
     local.get $12
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
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $10
  local.get $9
  i32.load
  local.tee $12
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   local.set $10
   local.get $12
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $11
  local.get $9
  i32.load offset=8
  local.tee $10
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $10
   call $~lib/rt/pure/__release
  end
  local.get $11
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
 (func $~lib/set/Set<i16>#add (; 76 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/hash/HASH<i16>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<i16>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<i16>#find
  local.set $4
  local.get $4
  i32.eqz
  if
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
    call $~lib/set/Set<i16>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $2
   i32.const 8
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i32.store16
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $2
   local.get $4
   local.get $2
   i32.load
   i32.store offset=4
   local.get $2
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<i16>#get:size (; 77 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<i16>#constructor (; 78 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 8
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<i16>#__unchecked_set (; 79 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/array/Array<i16>#__set (; 80 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 280
    i32.const 416
    i32.const 109
    i32.const 21
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
 (func $~lib/set/Set<i16>#values (; 81 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $5
    i32.const 8
    i32.mul
    i32.add
    local.set $6
    local.get $6
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $7
     i32.const 1
     i32.add
     local.set $4
     local.get $7
     local.get $6
     i32.load16_s
     call $~lib/array/Array<i16>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $~lib/array/Array<i16>#get:length (; 82 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i16>#__unchecked_get (; 83 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/array/Array<i16>#__get (; 84 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 280
   i32.const 416
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i16>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/set/Set<i16>#delete (; 85 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  call $~lib/set/Set<i16>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   call $~lib/set/Set<i16>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<i16> (; 86 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  call $~lib/set/Set<i16>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/set/Set<i16>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i16>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<i16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i32.const 50
   local.set $1
   loop $loop|1
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $0
    local.get $1
    call $~lib/set/Set<i16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i16>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<i16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|1
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i16>#values
  local.set $1
  i32.const 0
  call $~lib/set/Set<i16>#constructor
  local.set $2
  block $break|2
   i32.const 0
   local.set $3
   loop $loop|2
    local.get $3
    local.get $1
    call $~lib/array/Array<i16>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|2
    local.get $0
    local.get $1
    local.get $3
    call $~lib/array/Array<i16>#__get
    call $~lib/set/Set<i16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    local.get $1
    local.get $3
    call $~lib/array/Array<i16>#__get
    call $~lib/set/Set<i16>#add
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|2
   end
   unreachable
  end
  local.get $2
  call $~lib/set/Set<i16>#get:size
  local.get $0
  call $~lib/set/Set<i16>#get:size
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $3
   loop $loop|3
    local.get $3
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|3
    local.get $0
    local.get $3
    call $~lib/set/Set<i16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<i16>#delete
    drop
    local.get $0
    local.get $3
    call $~lib/set/Set<i16>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|3
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|4
   i32.const 0
   local.set $3
   loop $loop|4
    local.get $3
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|4
    local.get $0
    local.get $3
    call $~lib/set/Set<i16>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<i16>#add
    local.get $0
    local.get $3
    call $~lib/set/Set<i16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<i16>#delete
    drop
    local.get $0
    local.get $3
    call $~lib/set/Set<i16>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|4
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i16>#clear
  local.get $0
  call $~lib/set/Set<i16>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<u16>#clear (; 87 ;) (param $0 i32)
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
  local.tee $1
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $2
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
 (func $~lib/set/Set<u16>#constructor (; 88 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
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
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  call $~lib/set/Set<u16>#clear
  local.get $0
 )
 (func $~lib/set/Set<u16>#find (; 89 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
  block $break|0
   loop $continue|0
    local.get $3
    i32.eqz
    br_if $break|0
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
    br $continue|0
   end
   unreachable
  end
  i32.const 0
 )
 (func $~lib/set/Set<u16>#has (; 90 ;) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<u16>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u16>#rehash (; 91 ;) (param $0 i32) (param $1 i32)
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
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    i32.eqz
    br_if $break|0
    local.get $6
    local.set $9
    local.get $9
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $10
     local.get $10
     local.get $9
     i32.load16_u
     i32.store16
     block $~lib/util/hash/HASH<u16>|inlined.2 (result i32)
      local.get $9
      i32.load16_u
      local.set $11
      local.get $11
      call $~lib/util/hash/hash16
      br $~lib/util/hash/HASH<u16>|inlined.2
     end
     local.get $1
     i32.and
     local.set $11
     local.get $3
     local.get $11
     i32.const 4
     i32.mul
     i32.add
     local.set $12
     local.get $10
     local.get $12
     i32.load
     i32.store offset=4
     local.get $12
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
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $10
  local.get $9
  i32.load
  local.tee $12
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   local.set $10
   local.get $12
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $11
  local.get $9
  i32.load offset=8
  local.tee $10
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $10
   call $~lib/rt/pure/__release
  end
  local.get $11
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
 (func $~lib/set/Set<u16>#add (; 92 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/hash/HASH<u16>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 65535
   i32.and
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<u16>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<u16>#find
  local.set $4
  local.get $4
  i32.eqz
  if
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
    call $~lib/set/Set<u16>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $2
   i32.const 8
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i32.store16
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $2
   local.get $4
   local.get $2
   i32.load
   i32.store offset=4
   local.get $2
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<u16>#get:size (; 93 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<u16>#constructor (; 94 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 10
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<u16>#__unchecked_set (; 95 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/array/Array<u16>#__set (; 96 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 280
    i32.const 416
    i32.const 109
    i32.const 21
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
 (func $~lib/set/Set<u16>#values (; 97 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $5
    i32.const 8
    i32.mul
    i32.add
    local.set $6
    local.get $6
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $7
     i32.const 1
     i32.add
     local.set $4
     local.get $7
     local.get $6
     i32.load16_u
     call $~lib/array/Array<u16>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $~lib/array/Array<u16>#get:length (; 98 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u16>#__unchecked_get (; 99 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/array/Array<u16>#__get (; 100 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 280
   i32.const 416
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u16>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/set/Set<u16>#delete (; 101 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  call $~lib/set/Set<u16>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   call $~lib/set/Set<u16>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<u16> (; 102 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  call $~lib/set/Set<u16>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/set/Set<u16>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u16>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<u16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i32.const 50
   local.set $1
   loop $loop|1
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|1
    local.get $0
    local.get $1
    call $~lib/set/Set<u16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u16>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<u16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|1
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u16>#values
  local.set $1
  i32.const 0
  call $~lib/set/Set<u16>#constructor
  local.set $2
  block $break|2
   i32.const 0
   local.set $3
   loop $loop|2
    local.get $3
    local.get $1
    call $~lib/array/Array<u16>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|2
    local.get $0
    local.get $1
    local.get $3
    call $~lib/array/Array<u16>#__get
    call $~lib/set/Set<u16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    local.get $1
    local.get $3
    call $~lib/array/Array<u16>#__get
    call $~lib/set/Set<u16>#add
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|2
   end
   unreachable
  end
  local.get $2
  call $~lib/set/Set<u16>#get:size
  local.get $0
  call $~lib/set/Set<u16>#get:size
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $3
   loop $loop|3
    local.get $3
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|3
    local.get $0
    local.get $3
    call $~lib/set/Set<u16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<u16>#delete
    drop
    local.get $0
    local.get $3
    call $~lib/set/Set<u16>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|3
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|4
   i32.const 0
   local.set $3
   loop $loop|4
    local.get $3
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|4
    local.get $0
    local.get $3
    call $~lib/set/Set<u16>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<u16>#add
    local.get $0
    local.get $3
    call $~lib/set/Set<u16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<u16>#delete
    drop
    local.get $0
    local.get $3
    call $~lib/set/Set<u16>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|4
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u16>#clear
  local.get $0
  call $~lib/set/Set<u16>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<i32>#clear (; 103 ;) (param $0 i32)
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
  local.tee $1
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $2
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
 (func $~lib/set/Set<i32>#constructor (; 104 ;) (param $0 i32) (result i32)
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
  call $~lib/set/Set<i32>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash32 (; 105 ;) (param $0 i32) (result i32)
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
 (func $~lib/set/Set<i32>#find (; 106 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
  block $break|0
   loop $continue|0
    local.get $3
    i32.eqz
    br_if $break|0
    local.get $3
    i32.load offset=4
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
    i32.load offset=4
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $continue|0
   end
   unreachable
  end
  i32.const 0
 )
 (func $~lib/set/Set<i32>#has (; 107 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i32>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.0
  end
  call $~lib/set/Set<i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i32>#rehash (; 108 ;) (param $0 i32) (param $1 i32)
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
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    i32.eqz
    br_if $break|0
    local.get $6
    local.set $9
    local.get $9
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $10
     local.get $10
     local.get $9
     i32.load
     i32.store
     block $~lib/util/hash/HASH<i32>|inlined.2 (result i32)
      local.get $9
      i32.load
      local.set $11
      local.get $11
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<i32>|inlined.2
     end
     local.get $1
     i32.and
     local.set $11
     local.get $3
     local.get $11
     i32.const 4
     i32.mul
     i32.add
     local.set $12
     local.get $10
     local.get $12
     i32.load
     i32.store offset=4
     local.get $12
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
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $10
  local.get $9
  i32.load
  local.tee $12
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   local.set $10
   local.get $12
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $11
  local.get $9
  i32.load offset=8
  local.tee $10
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $10
   call $~lib/rt/pure/__release
  end
  local.get $11
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
 (func $~lib/set/Set<i32>#add (; 109 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/hash/HASH<i32>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<i32>#find
  local.set $4
  local.get $4
  i32.eqz
  if
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
    call $~lib/set/Set<i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $2
   i32.const 8
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $2
   local.get $4
   local.get $2
   i32.load
   i32.store offset=4
   local.get $2
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<i32>#get:size (; 110 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<i32>#constructor (; 111 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 12
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<i32>#__unchecked_set (; 112 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<i32>#__set (; 113 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 280
    i32.const 416
    i32.const 109
    i32.const 21
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
 (func $~lib/set/Set<i32>#values (; 114 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $5
    i32.const 8
    i32.mul
    i32.add
    local.set $6
    local.get $6
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $7
     i32.const 1
     i32.add
     local.set $4
     local.get $7
     local.get $6
     i32.load
     call $~lib/array/Array<i32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $~lib/array/Array<i32>#get:length (; 115 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 116 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 117 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 280
   i32.const 416
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/set/Set<i32>#delete (; 118 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i32>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.3
  end
  call $~lib/set/Set<i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   call $~lib/set/Set<i32>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<i32> (; 119 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  call $~lib/set/Set<i32>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i32.const 50
   local.set $1
   loop $loop|1
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|1
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i32>#values
  local.set $1
  i32.const 0
  call $~lib/set/Set<i32>#constructor
  local.set $2
  block $break|2
   i32.const 0
   local.set $3
   loop $loop|2
    local.get $3
    local.get $1
    call $~lib/array/Array<i32>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|2
    local.get $0
    local.get $1
    local.get $3
    call $~lib/array/Array<i32>#__get
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    local.get $1
    local.get $3
    call $~lib/array/Array<i32>#__get
    call $~lib/set/Set<i32>#add
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|2
   end
   unreachable
  end
  local.get $2
  call $~lib/set/Set<i32>#get:size
  local.get $0
  call $~lib/set/Set<i32>#get:size
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $3
   loop $loop|3
    local.get $3
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|3
    local.get $0
    local.get $3
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<i32>#delete
    drop
    local.get $0
    local.get $3
    call $~lib/set/Set<i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|3
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|4
   i32.const 0
   local.set $3
   loop $loop|4
    local.get $3
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|4
    local.get $0
    local.get $3
    call $~lib/set/Set<i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<i32>#add
    local.get $0
    local.get $3
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<i32>#delete
    drop
    local.get $0
    local.get $3
    call $~lib/set/Set<i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|4
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i32>#clear
  local.get $0
  call $~lib/set/Set<i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<u32>#clear (; 120 ;) (param $0 i32)
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
  local.tee $1
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $2
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
 (func $~lib/set/Set<u32>#constructor (; 121 ;) (param $0 i32) (result i32)
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
  call $~lib/set/Set<u32>#clear
  local.get $0
 )
 (func $~lib/set/Set<u32>#find (; 122 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
  block $break|0
   loop $continue|0
    local.get $3
    i32.eqz
    br_if $break|0
    local.get $3
    i32.load offset=4
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
    i32.load offset=4
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $continue|0
   end
   unreachable
  end
  i32.const 0
 )
 (func $~lib/set/Set<u32>#has (; 123 ;) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<u32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u32>#rehash (; 124 ;) (param $0 i32) (param $1 i32)
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
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    i32.eqz
    br_if $break|0
    local.get $6
    local.set $9
    local.get $9
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $10
     local.get $10
     local.get $9
     i32.load
     i32.store
     block $~lib/util/hash/HASH<u32>|inlined.2 (result i32)
      local.get $9
      i32.load
      local.set $11
      local.get $11
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<u32>|inlined.2
     end
     local.get $1
     i32.and
     local.set $11
     local.get $3
     local.get $11
     i32.const 4
     i32.mul
     i32.add
     local.set $12
     local.get $10
     local.get $12
     i32.load
     i32.store offset=4
     local.get $12
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
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $10
  local.get $9
  i32.load
  local.tee $12
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   local.set $10
   local.get $12
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $11
  local.get $9
  i32.load offset=8
  local.tee $10
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $10
   call $~lib/rt/pure/__release
  end
  local.get $11
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
 (func $~lib/set/Set<u32>#add (; 125 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/hash/HASH<u32>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<u32>#find
  local.set $4
  local.get $4
  i32.eqz
  if
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
    call $~lib/set/Set<u32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $2
   i32.const 8
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $2
   local.get $4
   local.get $2
   i32.load
   i32.store offset=4
   local.get $2
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<u32>#get:size (; 126 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<u32>#constructor (; 127 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 14
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<u32>#__unchecked_set (; 128 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<u32>#__set (; 129 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 280
    i32.const 416
    i32.const 109
    i32.const 21
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
 (func $~lib/set/Set<u32>#values (; 130 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $5
    i32.const 8
    i32.mul
    i32.add
    local.set $6
    local.get $6
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $7
     i32.const 1
     i32.add
     local.set $4
     local.get $7
     local.get $6
     i32.load
     call $~lib/array/Array<u32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $~lib/array/Array<u32>#get:length (; 131 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#__unchecked_get (; 132 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<u32>#__get (; 133 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 280
   i32.const 416
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/set/Set<u32>#delete (; 134 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u32>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.3
  end
  call $~lib/set/Set<u32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   call $~lib/set/Set<u32>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<u32> (; 135 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  call $~lib/set/Set<u32>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/set/Set<u32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u32>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<u32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i32.const 50
   local.set $1
   loop $loop|1
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|1
    local.get $0
    local.get $1
    call $~lib/set/Set<u32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u32>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<u32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|1
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u32>#values
  local.set $1
  i32.const 0
  call $~lib/set/Set<u32>#constructor
  local.set $2
  block $break|2
   i32.const 0
   local.set $3
   loop $loop|2
    local.get $3
    local.get $1
    call $~lib/array/Array<u32>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|2
    local.get $0
    local.get $1
    local.get $3
    call $~lib/array/Array<u32>#__get
    call $~lib/set/Set<u32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    local.get $1
    local.get $3
    call $~lib/array/Array<u32>#__get
    call $~lib/set/Set<u32>#add
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|2
   end
   unreachable
  end
  local.get $2
  call $~lib/set/Set<u32>#get:size
  local.get $0
  call $~lib/set/Set<u32>#get:size
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $3
   loop $loop|3
    local.get $3
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|3
    local.get $0
    local.get $3
    call $~lib/set/Set<u32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<u32>#delete
    drop
    local.get $0
    local.get $3
    call $~lib/set/Set<u32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|3
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|4
   i32.const 0
   local.set $3
   loop $loop|4
    local.get $3
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|4
    local.get $0
    local.get $3
    call $~lib/set/Set<u32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<u32>#add
    local.get $0
    local.get $3
    call $~lib/set/Set<u32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/set/Set<u32>#delete
    drop
    local.get $0
    local.get $3
    call $~lib/set/Set<u32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|4
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u32>#clear
  local.get $0
  call $~lib/set/Set<u32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<i64>#clear (; 136 ;) (param $0 i32)
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
  local.tee $1
  i32.const 0
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $2
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
 (func $~lib/set/Set<i64>#constructor (; 137 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
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
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  call $~lib/set/Set<i64>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash64 (; 138 ;) (param $0 i64) (result i32)
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
 (func $~lib/set/Set<i64>#find (; 139 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
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
  block $break|0
   loop $continue|0
    local.get $3
    i32.eqz
    br_if $break|0
    local.get $3
    i32.load offset=8
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
    i32.load offset=8
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $continue|0
   end
   unreachable
  end
  i32.const 0
 )
 (func $~lib/set/Set<i64>#has (; 140 ;) (param $0 i32) (param $1 i64) (result i32)
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
  call $~lib/set/Set<i64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i64>#rehash (; 141 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
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
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    i32.eqz
    br_if $break|0
    local.get $6
    local.set $9
    local.get $9
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $10
     local.get $10
     local.get $9
     i64.load
     i64.store
     block $~lib/util/hash/HASH<i64>|inlined.2 (result i32)
      local.get $9
      i64.load
      local.set $11
      local.get $11
      call $~lib/util/hash/hash64
      br $~lib/util/hash/HASH<i64>|inlined.2
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
     local.get $10
     local.get $13
     i32.load
     i32.store offset=8
     local.get $13
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
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $10
  local.get $9
  i32.load
  local.tee $13
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   local.set $10
   local.get $13
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $12
  local.get $9
  i32.load offset=8
  local.tee $10
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $10
   call $~lib/rt/pure/__release
  end
  local.get $12
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
 (func $~lib/set/Set<i64>#add (; 142 ;) (param $0 i32) (param $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/hash/HASH<i64>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<i64>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<i64>#find
  local.set $4
  local.get $4
  i32.eqz
  if
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
    call $~lib/set/Set<i64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 16
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i64.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $5
   local.get $4
   local.get $5
   i32.load
   i32.store offset=8
   local.get $5
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<i64>#get:size (; 143 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<i64>#constructor (; 144 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 16
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<i64>#__unchecked_set (; 145 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $~lib/array/Array<i64>#__set (; 146 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 280
    i32.const 416
    i32.const 109
    i32.const 21
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
 (func $~lib/set/Set<i64>#values (; 147 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $5
    i32.const 16
    i32.mul
    i32.add
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $7
     i32.const 1
     i32.add
     local.set $4
     local.get $7
     local.get $6
     i64.load
     call $~lib/array/Array<i64>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $~lib/array/Array<i64>#get:length (; 148 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i64>#__unchecked_get (; 149 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<i64>#__get (; 150 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 280
   i32.const 416
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i64>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/set/Set<i64>#delete (; 151 ;) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i64>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<i64>|inlined.3
  end
  call $~lib/set/Set<i64>#find
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
   call $~lib/set/Set<i64>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<i64> (; 152 ;)
  (local $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  call $~lib/set/Set<i64>#constructor
  local.set $0
  block $break|0
   i64.const 0
   local.set $1
   loop $loop|0
    local.get $1
    i64.const 100
    i64.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/set/Set<i64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i64>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i64.const 50
   local.set $1
   loop $loop|1
    local.get $1
    i64.const 100
    i64.lt_s
    i32.eqz
    br_if $break|1
    local.get $0
    local.get $1
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i64>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $loop|1
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i64>#values
  local.set $2
  i32.const 0
  call $~lib/set/Set<i64>#constructor
  local.set $3
  block $break|2
   i32.const 0
   local.set $4
   loop $loop|2
    local.get $4
    local.get $2
    call $~lib/array/Array<i64>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|2
    local.get $0
    local.get $2
    local.get $4
    call $~lib/array/Array<i64>#__get
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $2
    local.get $4
    call $~lib/array/Array<i64>#__get
    call $~lib/set/Set<i64>#add
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|2
   end
   unreachable
  end
  local.get $3
  call $~lib/set/Set<i64>#get:size
  local.get $0
  call $~lib/set/Set<i64>#get:size
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|3
   i64.const 0
   local.set $1
   loop $loop|3
    local.get $1
    i64.const 50
    i64.lt_s
    i32.eqz
    br_if $break|3
    local.get $0
    local.get $1
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i64>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/set/Set<i64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $loop|3
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|4
   i64.const 0
   local.set $1
   loop $loop|4
    local.get $1
    i64.const 50
    i64.lt_s
    i32.eqz
    br_if $break|4
    local.get $0
    local.get $1
    call $~lib/set/Set<i64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i64>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i64>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/set/Set<i64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $loop|4
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i64>#clear
  local.get $0
  call $~lib/set/Set<i64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<u64>#clear (; 153 ;) (param $0 i32)
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
  local.tee $1
  i32.const 0
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $2
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
 (func $~lib/set/Set<u64>#constructor (; 154 ;) (param $0 i32) (result i32)
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
  call $~lib/set/Set<u64>#clear
  local.get $0
 )
 (func $~lib/set/Set<u64>#find (; 155 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
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
  block $break|0
   loop $continue|0
    local.get $3
    i32.eqz
    br_if $break|0
    local.get $3
    i32.load offset=8
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
    i32.load offset=8
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $continue|0
   end
   unreachable
  end
  i32.const 0
 )
 (func $~lib/set/Set<u64>#has (; 156 ;) (param $0 i32) (param $1 i64) (result i32)
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
  call $~lib/set/Set<u64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u64>#rehash (; 157 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
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
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    i32.eqz
    br_if $break|0
    local.get $6
    local.set $9
    local.get $9
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $10
     local.get $10
     local.get $9
     i64.load
     i64.store
     block $~lib/util/hash/HASH<u64>|inlined.2 (result i32)
      local.get $9
      i64.load
      local.set $11
      local.get $11
      call $~lib/util/hash/hash64
      br $~lib/util/hash/HASH<u64>|inlined.2
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
     local.get $10
     local.get $13
     i32.load
     i32.store offset=8
     local.get $13
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
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $10
  local.get $9
  i32.load
  local.tee $13
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   local.set $10
   local.get $13
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $12
  local.get $9
  i32.load offset=8
  local.tee $10
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $10
   call $~lib/rt/pure/__release
  end
  local.get $12
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
 (func $~lib/set/Set<u64>#add (; 158 ;) (param $0 i32) (param $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/hash/HASH<u64>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<u64>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<u64>#find
  local.set $4
  local.get $4
  i32.eqz
  if
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
    call $~lib/set/Set<u64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 16
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i64.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $5
   local.get $4
   local.get $5
   i32.load
   i32.store offset=8
   local.get $5
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<u64>#get:size (; 159 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<u64>#constructor (; 160 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 18
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<u64>#__unchecked_set (; 161 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $~lib/array/Array<u64>#__set (; 162 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 280
    i32.const 416
    i32.const 109
    i32.const 21
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
 (func $~lib/set/Set<u64>#values (; 163 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $5
    i32.const 16
    i32.mul
    i32.add
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $7
     i32.const 1
     i32.add
     local.set $4
     local.get $7
     local.get $6
     i64.load
     call $~lib/array/Array<u64>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $~lib/array/Array<u64>#get:length (; 164 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u64>#__unchecked_get (; 165 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<u64>#__get (; 166 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 280
   i32.const 416
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/set/Set<u64>#delete (; 167 ;) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u64>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<u64>|inlined.3
  end
  call $~lib/set/Set<u64>#find
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
   call $~lib/set/Set<u64>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<u64> (; 168 ;)
  (local $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  call $~lib/set/Set<u64>#constructor
  local.set $0
  block $break|0
   i64.const 0
   local.set $1
   loop $loop|0
    local.get $1
    i64.const 100
    i64.lt_u
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/set/Set<u64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u64>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<u64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i64.const 50
   local.set $1
   loop $loop|1
    local.get $1
    i64.const 100
    i64.lt_u
    i32.eqz
    br_if $break|1
    local.get $0
    local.get $1
    call $~lib/set/Set<u64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u64>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<u64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $loop|1
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u64>#values
  local.set $2
  i32.const 0
  call $~lib/set/Set<u64>#constructor
  local.set $3
  block $break|2
   i32.const 0
   local.set $4
   loop $loop|2
    local.get $4
    local.get $2
    call $~lib/array/Array<u64>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|2
    local.get $0
    local.get $2
    local.get $4
    call $~lib/array/Array<u64>#__get
    call $~lib/set/Set<u64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $2
    local.get $4
    call $~lib/array/Array<u64>#__get
    call $~lib/set/Set<u64>#add
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|2
   end
   unreachable
  end
  local.get $3
  call $~lib/set/Set<u64>#get:size
  local.get $0
  call $~lib/set/Set<u64>#get:size
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|3
   i64.const 0
   local.set $1
   loop $loop|3
    local.get $1
    i64.const 50
    i64.lt_u
    i32.eqz
    br_if $break|3
    local.get $0
    local.get $1
    call $~lib/set/Set<u64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u64>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/set/Set<u64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $loop|3
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|4
   i64.const 0
   local.set $1
   loop $loop|4
    local.get $1
    i64.const 50
    i64.lt_u
    i32.eqz
    br_if $break|4
    local.get $0
    local.get $1
    call $~lib/set/Set<u64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u64>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<u64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u64>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/set/Set<u64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $loop|4
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u64>#clear
  local.get $0
  call $~lib/set/Set<u64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<f32>#clear (; 169 ;) (param $0 i32)
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
  local.tee $1
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $2
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
 (func $~lib/set/Set<f32>#constructor (; 170 ;) (param $0 i32) (result i32)
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
  call $~lib/set/Set<f32>#clear
  local.get $0
 )
 (func $~lib/set/Set<f32>#find (; 171 ;) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
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
  block $break|0
   loop $continue|0
    local.get $3
    i32.eqz
    br_if $break|0
    local.get $3
    i32.load offset=4
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
    i32.load offset=4
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $continue|0
   end
   unreachable
  end
  i32.const 0
 )
 (func $~lib/set/Set<f32>#has (; 172 ;) (param $0 i32) (param $1 f32) (result i32)
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
  call $~lib/set/Set<f32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<f32>#rehash (; 173 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f32)
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
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    i32.eqz
    br_if $break|0
    local.get $6
    local.set $9
    local.get $9
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $10
     local.get $10
     local.get $9
     f32.load
     f32.store
     block $~lib/util/hash/HASH<f32>|inlined.2 (result i32)
      local.get $9
      f32.load
      local.set $11
      local.get $11
      i32.reinterpret_f32
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<f32>|inlined.2
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
     local.get $10
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
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $10
  local.get $9
  i32.load
  local.tee $13
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   local.set $10
   local.get $13
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $12
  local.get $9
  i32.load offset=8
  local.tee $10
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $10
   call $~lib/rt/pure/__release
  end
  local.get $12
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
 (func $~lib/set/Set<f32>#add (; 174 ;) (param $0 i32) (param $1 f32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/hash/HASH<f32>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<f32>#find
  local.set $4
  local.get $4
  i32.eqz
  if
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
    call $~lib/set/Set<f32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 8
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   f32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $5
   local.get $4
   local.get $5
   i32.load
   i32.store offset=4
   local.get $5
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<f32>#get:size (; 175 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<f32>#constructor (; 176 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 20
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<f32>#__unchecked_set (; 177 ;) (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  f32.store
 )
 (func $~lib/array/Array<f32>#__set (; 178 ;) (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 280
    i32.const 416
    i32.const 109
    i32.const 21
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
 (func $~lib/set/Set<f32>#values (; 179 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $5
    i32.const 8
    i32.mul
    i32.add
    local.set $6
    local.get $6
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $7
     i32.const 1
     i32.add
     local.set $4
     local.get $7
     local.get $6
     f32.load
     call $~lib/array/Array<f32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $~lib/array/Array<f32>#get:length (; 180 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f32>#__unchecked_get (; 181 ;) (param $0 i32) (param $1 i32) (result f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $~lib/array/Array<f32>#__get (; 182 ;) (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 280
   i32.const 416
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/set/Set<f32>#delete (; 183 ;) (param $0 i32) (param $1 f32) (result i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  call $~lib/set/Set<f32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   call $~lib/set/Set<f32>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<f32> (; 184 ;)
  (local $0 i32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  call $~lib/set/Set<f32>#constructor
  local.set $0
  block $break|0
   f32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    f32.const 100
    f32.lt
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/set/Set<f32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<f32>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   f32.const 50
   local.set $1
   loop $loop|1
    local.get $1
    f32.const 100
    f32.lt
    i32.eqz
    br_if $break|1
    local.get $0
    local.get $1
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<f32>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $loop|1
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f32>#values
  local.set $2
  i32.const 0
  call $~lib/set/Set<f32>#constructor
  local.set $3
  block $break|2
   i32.const 0
   local.set $4
   loop $loop|2
    local.get $4
    local.get $2
    call $~lib/array/Array<f32>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|2
    local.get $0
    local.get $2
    local.get $4
    call $~lib/array/Array<f32>#__get
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $2
    local.get $4
    call $~lib/array/Array<f32>#__get
    call $~lib/set/Set<f32>#add
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|2
   end
   unreachable
  end
  local.get $3
  call $~lib/set/Set<f32>#get:size
  local.get $0
  call $~lib/set/Set<f32>#get:size
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|3
   f32.const 0
   local.set $1
   loop $loop|3
    local.get $1
    f32.const 50
    f32.lt
    i32.eqz
    br_if $break|3
    local.get $0
    local.get $1
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<f32>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/set/Set<f32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $loop|3
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|4
   f32.const 0
   local.set $1
   loop $loop|4
    local.get $1
    f32.const 50
    f32.lt
    i32.eqz
    br_if $break|4
    local.get $0
    local.get $1
    call $~lib/set/Set<f32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<f32>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<f32>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/set/Set<f32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $loop|4
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f32>#clear
  local.get $0
  call $~lib/set/Set<f32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<f64>#clear (; 185 ;) (param $0 i32)
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
  local.tee $1
  i32.const 0
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $2
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
 (func $~lib/set/Set<f64>#constructor (; 186 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
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
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  call $~lib/set/Set<f64>#clear
  local.get $0
 )
 (func $~lib/set/Set<f64>#find (; 187 ;) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
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
  block $break|0
   loop $continue|0
    local.get $3
    i32.eqz
    br_if $break|0
    local.get $3
    i32.load offset=8
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
    i32.load offset=8
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $continue|0
   end
   unreachable
  end
  i32.const 0
 )
 (func $~lib/set/Set<f64>#has (; 188 ;) (param $0 i32) (param $1 f64) (result i32)
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
  call $~lib/set/Set<f64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<f64>#rehash (; 189 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f64)
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
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    i32.eqz
    br_if $break|0
    local.get $6
    local.set $9
    local.get $9
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $10
     local.get $10
     local.get $9
     f64.load
     f64.store
     block $~lib/util/hash/HASH<f64>|inlined.2 (result i32)
      local.get $9
      f64.load
      local.set $11
      local.get $11
      i64.reinterpret_f64
      call $~lib/util/hash/hash64
      br $~lib/util/hash/HASH<f64>|inlined.2
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
     local.get $10
     local.get $13
     i32.load
     i32.store offset=8
     local.get $13
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
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $10
  local.get $9
  i32.load
  local.tee $13
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   local.set $10
   local.get $13
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $12
  local.get $9
  i32.load offset=8
  local.tee $10
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $10
   call $~lib/rt/pure/__release
  end
  local.get $12
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
 (func $~lib/set/Set<f64>#add (; 190 ;) (param $0 i32) (param $1 f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/hash/HASH<f64>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<f64>#find
  local.set $4
  local.get $4
  i32.eqz
  if
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
    call $~lib/set/Set<f64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 16
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   f64.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $5
   local.get $4
   local.get $5
   i32.load
   i32.store offset=8
   local.get $5
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<f64>#get:size (; 191 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<f64>#constructor (; 192 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 22
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<f64>#__unchecked_set (; 193 ;) (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  f64.store
 )
 (func $~lib/array/Array<f64>#__set (; 194 ;) (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 280
    i32.const 416
    i32.const 109
    i32.const 21
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
 (func $~lib/set/Set<f64>#values (; 195 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $5
    i32.const 16
    i32.mul
    i32.add
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $7
     i32.const 1
     i32.add
     local.set $4
     local.get $7
     local.get $6
     f64.load
     call $~lib/array/Array<f64>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $~lib/array/Array<f64>#get:length (; 196 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f64>#__unchecked_get (; 197 ;) (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/array/Array<f64>#__get (; 198 ;) (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 280
   i32.const 416
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/set/Set<f64>#delete (; 199 ;) (param $0 i32) (param $1 f64) (result i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  call $~lib/set/Set<f64>#find
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
   call $~lib/set/Set<f64>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<f64> (; 200 ;)
  (local $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  call $~lib/set/Set<f64>#constructor
  local.set $0
  block $break|0
   f64.const 0
   local.set $1
   loop $loop|0
    local.get $1
    f64.const 100
    f64.lt
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/set/Set<f64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<f64>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   f64.const 50
   local.set $1
   loop $loop|1
    local.get $1
    f64.const 100
    f64.lt
    i32.eqz
    br_if $break|1
    local.get $0
    local.get $1
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<f64>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $loop|1
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f64>#values
  local.set $2
  i32.const 0
  call $~lib/set/Set<f64>#constructor
  local.set $3
  block $break|2
   i32.const 0
   local.set $4
   loop $loop|2
    local.get $4
    local.get $2
    call $~lib/array/Array<f64>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|2
    local.get $0
    local.get $2
    local.get $4
    call $~lib/array/Array<f64>#__get
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $2
    local.get $4
    call $~lib/array/Array<f64>#__get
    call $~lib/set/Set<f64>#add
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|2
   end
   unreachable
  end
  local.get $3
  call $~lib/set/Set<f64>#get:size
  local.get $0
  call $~lib/set/Set<f64>#get:size
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|3
   f64.const 0
   local.set $1
   loop $loop|3
    local.get $1
    f64.const 50
    f64.lt
    i32.eqz
    br_if $break|3
    local.get $0
    local.get $1
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<f64>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/set/Set<f64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $loop|3
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|4
   f64.const 0
   local.set $1
   loop $loop|4
    local.get $1
    f64.const 50
    f64.lt
    i32.eqz
    br_if $break|4
    local.get $0
    local.get $1
    call $~lib/set/Set<f64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<f64>#add
    local.get $0
    local.get $1
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<f64>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/set/Set<f64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $loop|4
   end
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f64>#clear
  local.get $0
  call $~lib/set/Set<f64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:std/set (; 201 ;)
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
 )
 (func $start (; 202 ;)
  call $start:std/set
 )
 (func $~lib/rt/pure/__visit (; 203 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         local.set $3
         local.get $3
         i32.const 1
         i32.eq
         br_if $case0|0
         local.get $3
         i32.const 2
         i32.eq
         br_if $case1|0
         local.get $3
         i32.const 3
         i32.eq
         br_if $case2|0
         local.get $3
         i32.const 4
         i32.eq
         br_if $case3|0
         local.get $3
         i32.const 5
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        local.get $2
        call $~lib/rt/pure/decrement
        br $break|0
       end
       local.get $2
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.gt_u
       i32.eqz
       if
        i32.const 0
        i32.const 128
        i32.const 75
        i32.const 17
        call $~lib/builtins/abort
        unreachable
       end
       local.get $2
       local.get $2
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $2
       call $~lib/rt/pure/markGray
       br $break|0
      end
      local.get $2
      call $~lib/rt/pure/scan
      br $break|0
     end
     local.get $2
     i32.load offset=4
     local.set $3
     local.get $3
     i32.const -268435456
     i32.and
     local.get $3
     i32.const 1
     i32.add
     i32.const -268435456
     i32.and
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 128
      i32.const 86
      i32.const 6
      call $~lib/builtins/abort
      unreachable
     end
     local.get $2
     local.get $3
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $3
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/scanBlack
     end
     br $break|0
    end
    local.get $2
    call $~lib/rt/pure/collectWhite
    br $break|0
   end
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 128
    i32.const 97
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $~lib/set/Set<i8>#__visit_impl (; 204 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<i8>#__visit_impl (; 205 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/set/Set<u8>#__visit_impl (; 206 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<u8>#__visit_impl (; 207 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/set/Set<i16>#__visit_impl (; 208 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<i16>#__visit_impl (; 209 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/set/Set<u16>#__visit_impl (; 210 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<u16>#__visit_impl (; 211 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/set/Set<i32>#__visit_impl (; 212 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<i32>#__visit_impl (; 213 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/set/Set<u32>#__visit_impl (; 214 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<u32>#__visit_impl (; 215 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/set/Set<i64>#__visit_impl (; 216 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<i64>#__visit_impl (; 217 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/set/Set<u64>#__visit_impl (; 218 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<u64>#__visit_impl (; 219 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/set/Set<f32>#__visit_impl (; 220 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<f32>#__visit_impl (; 221 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/set/Set<f64>#__visit_impl (; 222 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<f64>#__visit_impl (; 223 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/rt/__visit_members (; 224 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$4$break
   block $switch$1$default
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
                          br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$5 $switch$1$case$6 $switch$1$case$7 $switch$1$case$8 $switch$1$case$9 $switch$1$case$10 $switch$1$case$11 $switch$1$case$12 $switch$1$case$13 $switch$1$case$14 $switch$1$case$15 $switch$1$case$16 $switch$1$case$17 $switch$1$case$18 $switch$1$case$19 $switch$1$case$20 $switch$1$case$21 $switch$1$case$22 $switch$1$case$23 $switch$1$case$24 $switch$1$default
                         end
                         return
                        end
                        br $block$4$break
                       end
                       local.get $0
                       local.get $1
                       call $~lib/set/Set<i8>#__visit_impl
                       return
                      end
                      local.get $0
                      local.get $1
                      call $~lib/array/Array<i8>#__visit_impl
                      br $block$4$break
                     end
                     local.get $0
                     local.get $1
                     call $~lib/set/Set<u8>#__visit_impl
                     return
                    end
                    local.get $0
                    local.get $1
                    call $~lib/array/Array<u8>#__visit_impl
                    br $block$4$break
                   end
                   local.get $0
                   local.get $1
                   call $~lib/set/Set<i16>#__visit_impl
                   return
                  end
                  local.get $0
                  local.get $1
                  call $~lib/array/Array<i16>#__visit_impl
                  br $block$4$break
                 end
                 local.get $0
                 local.get $1
                 call $~lib/set/Set<u16>#__visit_impl
                 return
                end
                local.get $0
                local.get $1
                call $~lib/array/Array<u16>#__visit_impl
                br $block$4$break
               end
               local.get $0
               local.get $1
               call $~lib/set/Set<i32>#__visit_impl
               return
              end
              local.get $0
              local.get $1
              call $~lib/array/Array<i32>#__visit_impl
              br $block$4$break
             end
             local.get $0
             local.get $1
             call $~lib/set/Set<u32>#__visit_impl
             return
            end
            local.get $0
            local.get $1
            call $~lib/array/Array<u32>#__visit_impl
            br $block$4$break
           end
           local.get $0
           local.get $1
           call $~lib/set/Set<i64>#__visit_impl
           return
          end
          local.get $0
          local.get $1
          call $~lib/array/Array<i64>#__visit_impl
          br $block$4$break
         end
         local.get $0
         local.get $1
         call $~lib/set/Set<u64>#__visit_impl
         return
        end
        local.get $0
        local.get $1
        call $~lib/array/Array<u64>#__visit_impl
        br $block$4$break
       end
       local.get $0
       local.get $1
       call $~lib/set/Set<f32>#__visit_impl
       return
      end
      local.get $0
      local.get $1
      call $~lib/array/Array<f32>#__visit_impl
      br $block$4$break
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#__visit_impl
     return
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<f64>#__visit_impl
    br $block$4$break
   end
   unreachable
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
 )
)
