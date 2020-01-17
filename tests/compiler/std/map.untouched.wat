(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i32_f32_=>_i32 (func (param i32 f32) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_i32_f32_=>_none (func (param i32 i32 f32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i32_i64_i64_=>_none (func (param i32 i64 i64)))
 (type $i32_f32_i32_=>_i32 (func (param i32 f32 i32) (result i32)))
 (type $i32_f64_i32_=>_i32 (func (param i32 f64 i32) (result i32)))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (type $i32_=>_f32 (func (param i32) (result f32)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_f32_i32_=>_none (func (param i32 f32 i32)))
 (type $i32_f32_f32_=>_none (func (param i32 f32 f32)))
 (type $i32_f64_i32_=>_none (func (param i32 f64 i32)))
 (type $i32_f64_f64_=>_none (func (param i32 f64 f64)))
 (type $none_=>_i32 (func (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (memory $0 1)
 (data (i32.const 16) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 64) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 128) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 176) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 224) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 288) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 352) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (data (i32.const 400) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00s\00t\00d\00/\00m\00a\00p\00.\00t\00s\00")
 (data (i32.const 448) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00")
 (data (i32.const 512) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00")
 (data (i32.const 560) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 608) "\8c\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\98\04\t\00\00\00\00\00\10\00\00\00\05\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\04\00\00\02\00\00\00\10\00\00\00\07\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\98\04\01\00\00\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\00\00\00\02\00\00\00\10\00\00\00\12\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\98\00\01\00\00\00\00\00\10\00\00\00\1b\00\00\00\10\00\00\00\00\00\00\00\98\04\n\00\00\00\00\00\10\00\00\00\1e\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\13\05\00\00\02\00\00\00\10\00\00\00 \00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\18\05\n\00\00\00\00\00\10\00\00\00)\00\00\00\10\00\00\00\00\00\00\00\98\04\02\00\00\00\00\00\10\00\00\00,\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\13\01\00\00\02\00\00\00\10\00\00\00.\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\18\01\02\00\00\00\00\00\10\00\00\007\00\00\00\10\00\00\00\00\00\00\00\98\04\19\00\00\00\00\00\10\00\00\00:\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\0c\00\00\02\00\00\00\10\00\00\00<\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\98\0c\19\00\00\00\00\00\10\00\00\00E\00\00\00\10\00\00\00\00\00\00\00\98\04\1a\00\00\00\00\00\10\00\00\00H\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\13\0d\00\00\02\00\00\00\10\00\00\00J\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\18\0d\1a\00\00\00\00\00\10\00\00\00S\00\00\00\10\00\00\00\00\00\00\00\98D\08\00\00\00\00\00\10\00\00\00V\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\003\04\00\00\02\00\00\00\10\00\00\00X\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\008D\08\00\00\00\00\00\10\00\00\00a\00\00\00\10\00\00\00\00\00\00\00\98D\00\00\00\00\00\00\10\00\00\00d\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\003\00\00\00\02\00\00\00\10\00\00\00f\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\008@\00\00\00\00\00\00\10\00\00\00o\00\00\00\10\00\00\00\00\00\00\00\98\84\08\00\00\00\00\00\10\00\00\00r\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00S\04\00\00\02\00\00\00\10\00\00\00t\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00X\84\08\00\00\00\00\00\10\00\00\00}\00\00\00\10\00\00\00\00\00\00\00\98\84\00\00\00\00\00\00\10\00\00\00\80\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00S\00\00\00\02\00\00\00\10\00\00\00\82\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00X\80\00\00\00\00\00\00\10\00\00\00\8b\00\00\00\10\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/gc/gc.auto (mut i32) (i32.const 1))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 608))
 (global $~lib/heap/__heap_base i32 (i32.const 1732))
 (export "__argumentsLength" (global $~argumentsLength))
 (export "memory" (memory $0))
 (start $~start)
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
   i32.const 32
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
   i32.const 32
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
   i32.const 32
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
   i32.const 32
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
   i32.const 32
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
    i32.const 32
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
   i32.const 32
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
   i32.const 32
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
   i32.const 32
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
   i32.const 32
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
    i32.const 32
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
    i32.const 32
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
 (func $~lib/rt/tlsf/maybeInitialize (; 8 ;) (result i32)
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
   i32.const -16
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
   local.get $0
   local.get $1
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
   local.get $0
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (; 9 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 80
   i32.const 32
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
   i32.const 32
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
     i32.const 32
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
   i32.const 32
   i32.const 569
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
  (local $6 i32)
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  local.get $0
  local.set $1
  local.get $1
  local.set $2
  global.get $~lib/rt/pure/CUR
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    i32.load offset=4
    local.set $6
    local.get $6
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $6
     i32.const 268435455
     i32.and
     i32.const 0
     i32.gt_u
    else
     i32.const 0
    end
    if
     local.get $5
     call $~lib/rt/pure/markGray
     local.get $1
     local.get $5
     i32.store
     local.get $1
     i32.const 4
     i32.add
     local.set $1
    else
     local.get $6
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.eq
     if (result i32)
      local.get $6
      i32.const 268435455
      i32.and
      i32.eqz
     else
      i32.const 0
     end
     if
      global.get $~lib/rt/tlsf/ROOT
      local.get $5
      call $~lib/rt/tlsf/freeBlock
     else
      local.get $5
      local.get $6
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
    br $for-loop|0
   end
  end
  local.get $1
  global.set $~lib/rt/pure/CUR
  local.get $0
  local.set $3
  loop $for-loop|1
   local.get $3
   local.get $1
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $3
    i32.load
    call $~lib/rt/pure/scan
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  local.get $0
  local.set $3
  loop $for-loop|2
   local.get $3
   local.get $1
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $3
    i32.load
    local.set $4
    local.get $4
    local.get $4
    i32.load offset=4
    i32.const -2147483648
    i32.const -1
    i32.xor
    i32.and
    i32.store offset=4
    local.get $4
    call $~lib/rt/pure/collectWhite
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $for-loop|2
   end
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
   i32.const 32
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
   i32.const 32
   i32.const 490
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
      i32.const 32
      i32.const 502
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
     i32.const 32
     i32.const 507
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
   i32.const 32
   i32.const 510
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
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  local.set $2
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
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
   i32.const 144
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
   i32.const 144
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
  (local $9 i32)
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
   loop $while-continue|0
    local.get $3
    i32.const 32
    i32.ge_u
    local.set $9
    local.get $9
    if
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
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 24 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 192
   i32.const 240
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
   i32.const 304
   i32.const 368
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
 (func $~lib/memory/memory.copy (; 27 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/rt/tlsf/__free (; 28 ;) (param $0 i32)
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
   i32.const 32
   i32.const 593
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/tlsf/maybeInitialize
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
   i32.const 144
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
    i32.const 144
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
 (func $~lib/map/Map<i32,i32>#clear (; 33 ;) (param $0 i32)
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
  i32.const 48
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
 (func $~lib/map/Map<i32,i32>#constructor (; 34 ;) (param $0 i32) (result i32)
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
  call $~lib/map/Map<i32,i32>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash32 (; 35 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<i32,i32>#find (; 36 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<i32,i32>#has (; 37 ;) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/map/Map<i32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i32,i32>#rehash (; 38 ;) (param $0 i32) (param $1 i32)
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
     block $~lib/util/hash/HASH<i32>|inlined.2 (result i32)
      local.get $10
      i32.load
      local.set $12
      local.get $12
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<i32>|inlined.2
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $13
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $13
   call $~lib/rt/pure/__release
  end
  local.get $11
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
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $11
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
 (func $~lib/map/Map<i32,i32>#set (; 39 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<i32>|inlined.1 (result i32)
   local.get $1
   local.set $3
   local.get $3
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.1
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
 )
 (func $~lib/map/Map<i32,i32>#get (; 40 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<i32,i32>#get:size (; 41 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/KeyIterator<i32,i32>#constructor (; 42 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 10
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/EntriesIter<i32,i32>#constructor (; 43 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 11
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const -1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/map/Map<i32,i32>#entries (; 44 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/map/EntriesIter<i32,i32>#constructor
 )
 (func $~lib/map/Map<i32,i32>#keys (; 45 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<i32,i32>#entries
  local.tee $1
  call $~lib/map/KeyIterator<i32,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 46 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 192
   i32.const 240
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
 (func $~lib/array/Array<i32>#constructor (; 47 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/rt/tlsf/reallocateBlock (; 48 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 32
   i32.const 525
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
  global.get $~lib/heap/__heap_base
  i32.ge_u
  if
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
  end
  local.get $8
 )
 (func $~lib/rt/tlsf/__realloc (; 49 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 32
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  i32.const 16
  i32.sub
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/array/ensureSize (; 50 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 576
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
 (func $~lib/array/Array<i32>#__unchecked_set (; 51 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<i32>#__set (; 52 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 304
    i32.const 576
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
 (func $~lib/array/Array<i32>#set:length (; 53 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array.from<i32,i32> (; 54 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  local.set $2
  local.get $0
  call $~lib/iterator/Iterable<i32>#get:iterator
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  call $~lib/iterator/Iterator<i32>#next
  local.set $5
  i32.const 0
  local.set $6
  loop $while-continue|0
   local.get $5
   call $~lib/iterator/IteratorResult<i32>#get:done
   i32.eqz
   local.set $7
   local.get $7
   if
    local.get $1
    if
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     i32.const 1
     global.set $~argumentsLength
     local.get $5
     call $~lib/iterator/IteratorResult<i32>#get:value
     local.get $1
     call_indirect (type $i32_=>_i32)
     call $~lib/array/Array<i32>#__set
    else
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     local.get $5
     call $~lib/iterator/IteratorResult<i32>#get:value
     call $~lib/array/Array<i32>#__set
    end
    local.get $4
    call $~lib/iterator/Iterator<i32>#next
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    local.set $5
    br $while-continue|0
   end
  end
  local.get $2
  local.get $6
  call $~lib/array/Array<i32>#set:length
  local.get $2
  local.set $7
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/map/ValueIterator<i32,i32>#constructor (; 55 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 13
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/Map<i32,i32>#values (; 56 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<i32,i32>#entries
  local.tee $1
  call $~lib/map/ValueIterator<i32,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<i32>#get:length (; 57 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 58 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 59 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 576
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
 (func $~lib/map/Map<i32,i32>#delete (; 60 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/map/testNumeric<i32,i32> (; 61 ;)
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
     i32.const 416
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.add
    call $~lib/map/Map<i32,i32>#set
    local.get $0
    local.get $1
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 8
     i32.const 4
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
     i32.const 416
     i32.const 9
     i32.const 4
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
   i32.const 416
   i32.const 11
   i32.const 2
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
     i32.const 416
     i32.const 15
     i32.const 4
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
     i32.const 416
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 20
    local.get $1
    i32.add
    call $~lib/map/Map<i32,i32>#set
    local.get $0
    local.get $1
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 18
     i32.const 4
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
     i32.const 416
     i32.const 19
     i32.const 4
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
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i32,i32>#keys
  local.tee $1
  i32.const 0
  call $~lib/array/Array.from<i32,i32>
  local.set $2
  local.get $0
  call $~lib/map/Map<i32,i32>#values
  local.tee $3
  i32.const 0
  call $~lib/array/Array.from<i32,i32>
  local.set $4
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $5
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $6
  i32.const 0
  local.set $7
  loop $for-loop|2
   local.get $7
   local.get $2
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   local.set $8
   local.get $8
   if
    local.get $2
    local.get $7
    call $~lib/array/Array<i32>#__get
    local.set $9
    local.get $4
    local.get $7
    call $~lib/array/Array<i32>#__get
    local.set $10
    local.get $0
    local.get $9
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    local.get $9
    local.get $9
    call $~lib/map/Map<i32,i32>#set
    local.get $6
    local.get $10
    i32.const 20
    i32.sub
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|2
   end
  end
  local.get $5
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
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
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $7
  loop $for-loop|3
   local.get $7
   i32.const 50
   i32.lt_s
   local.set $8
   local.get $8
   if
    local.get $0
    local.get $7
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<i32,i32>#get
    i32.const 20
    local.get $7
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<i32,i32>#delete
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
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
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $7
  loop $for-loop|4
   local.get $7
   i32.const 50
   i32.lt_s
   local.set $8
   local.get $8
   if
    local.get $0
    local.get $7
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    i32.const 10
    local.get $7
    i32.add
    call $~lib/map/Map<i32,i32>#set
    local.get $0
    local.get $7
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 52
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<i32,i32>#delete
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
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
   i32.const 416
   i32.const 56
   i32.const 2
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
   i32.const 416
   i32.const 60
   i32.const 2
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
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u32,i32>#clear (; 62 ;) (param $0 i32)
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
  i32.const 48
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
 (func $~lib/map/Map<u32,i32>#constructor (; 63 ;) (param $0 i32) (result i32)
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
  call $~lib/map/Map<u32,i32>#clear
  local.get $0
 )
 (func $~lib/map/Map<u32,i32>#find (; 64 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<u32,i32>#has (; 65 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/map/Map<u32,i32>#rehash (; 66 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $13
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $13
   call $~lib/rt/pure/__release
  end
  local.get $11
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
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $11
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
 (func $~lib/map/Map<u32,i32>#set (; 67 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 )
 (func $~lib/map/Map<u32,i32>#get (; 68 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<u32,i32>#get:size (; 69 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/KeyIterator<u32,i32>#constructor (; 70 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 21
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/EntriesIter<u32,i32>#constructor (; 71 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 22
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const -1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/map/Map<u32,i32>#entries (; 72 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/map/EntriesIter<u32,i32>#constructor
 )
 (func $~lib/map/Map<u32,i32>#keys (; 73 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<u32,i32>#entries
  local.tee $1
  call $~lib/map/KeyIterator<u32,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<u32>#constructor (; 74 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 19
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
 (func $~lib/array/Array<u32>#__unchecked_set (; 75 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<u32>#__set (; 76 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 304
    i32.const 576
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
 (func $~lib/array/Array<u32>#set:length (; 77 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array.from<u32,u32> (; 78 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u32>#constructor
  local.set $2
  local.get $0
  call $~lib/iterator/Iterable<u32>#get:iterator
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  call $~lib/iterator/Iterator<u32>#next
  local.set $5
  i32.const 0
  local.set $6
  loop $while-continue|0
   local.get $5
   call $~lib/iterator/IteratorResult<u32>#get:done
   i32.eqz
   local.set $7
   local.get $7
   if
    local.get $1
    if
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     i32.const 1
     global.set $~argumentsLength
     local.get $5
     call $~lib/iterator/IteratorResult<u32>#get:value
     local.get $1
     call_indirect (type $i32_=>_i32)
     call $~lib/array/Array<u32>#__set
    else
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     local.get $5
     call $~lib/iterator/IteratorResult<u32>#get:value
     call $~lib/array/Array<u32>#__set
    end
    local.get $4
    call $~lib/iterator/Iterator<u32>#next
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    local.set $5
    br $while-continue|0
   end
  end
  local.get $2
  local.get $6
  call $~lib/array/Array<u32>#set:length
  local.get $2
  local.set $7
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/map/ValueIterator<u32,i32>#constructor (; 79 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 24
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/Map<u32,i32>#values (; 80 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<u32,i32>#entries
  local.tee $1
  call $~lib/map/ValueIterator<u32,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<u32,u32>#clear (; 81 ;) (param $0 i32)
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
  i32.const 48
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
 (func $~lib/map/Map<u32,u32>#constructor (; 82 ;) (param $0 i32) (result i32)
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
  call $~lib/map/Map<u32,u32>#clear
  local.get $0
 )
 (func $~lib/array/Array<u32>#get:length (; 83 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#__unchecked_get (; 84 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<u32>#__get (; 85 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 576
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
 (func $~lib/map/Map<u32,u32>#find (; 86 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<u32,u32>#rehash (; 87 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $13
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $13
   call $~lib/rt/pure/__release
  end
  local.get $11
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
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $11
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
 (func $~lib/map/Map<u32,u32>#set (; 88 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 )
 (func $~lib/map/Map<u32,u32>#get:size (; 89 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u32,i32>#delete (; 90 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/map/testNumeric<u32,i32> (; 91 ;)
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
     i32.const 416
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.add
    call $~lib/map/Map<u32,i32>#set
    local.get $0
    local.get $1
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 8
     i32.const 4
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
     i32.const 416
     i32.const 9
     i32.const 4
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
   i32.const 416
   i32.const 11
   i32.const 2
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
     i32.const 416
     i32.const 15
     i32.const 4
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
     i32.const 416
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 20
    local.get $1
    i32.add
    call $~lib/map/Map<u32,i32>#set
    local.get $0
    local.get $1
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 18
     i32.const 4
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
     i32.const 416
     i32.const 19
     i32.const 4
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
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u32,i32>#keys
  local.tee $1
  i32.const 0
  call $~lib/array/Array.from<u32,u32>
  local.set $2
  local.get $0
  call $~lib/map/Map<u32,i32>#values
  local.tee $3
  i32.const 0
  call $~lib/array/Array.from<i32,i32>
  local.set $4
  i32.const 0
  call $~lib/map/Map<u32,u32>#constructor
  local.set $5
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $6
  i32.const 0
  local.set $7
  loop $for-loop|2
   local.get $7
   local.get $2
   call $~lib/array/Array<u32>#get:length
   i32.lt_s
   local.set $8
   local.get $8
   if
    local.get $2
    local.get $7
    call $~lib/array/Array<u32>#__get
    local.set $9
    local.get $4
    local.get $7
    call $~lib/array/Array<i32>#__get
    local.set $10
    local.get $0
    local.get $9
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    local.get $9
    local.get $9
    call $~lib/map/Map<u32,u32>#set
    local.get $6
    local.get $10
    i32.const 20
    i32.sub
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|2
   end
  end
  local.get $5
  call $~lib/map/Map<u32,u32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
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
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $7
  loop $for-loop|3
   local.get $7
   i32.const 50
   i32.lt_u
   local.set $8
   local.get $8
   if
    local.get $0
    local.get $7
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<u32,i32>#get
    i32.const 20
    local.get $7
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<u32,i32>#delete
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
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
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $7
  loop $for-loop|4
   local.get $7
   i32.const 50
   i32.lt_u
   local.set $8
   local.get $8
   if
    local.get $0
    local.get $7
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    i32.const 10
    local.get $7
    i32.add
    call $~lib/map/Map<u32,i32>#set
    local.get $0
    local.get $7
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 52
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<u32,i32>#delete
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
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
   i32.const 416
   i32.const 56
   i32.const 2
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
   i32.const 416
   i32.const 60
   i32.const 2
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
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i64,i32>#clear (; 92 ;) (param $0 i32)
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
 (func $~lib/map/Map<i64,i32>#constructor (; 93 ;) (param $0 i32) (result i32)
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
  call $~lib/map/Map<i64,i32>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash64 (; 94 ;) (param $0 i64) (result i32)
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
 (func $~lib/map/Map<i64,i32>#find (; 95 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<i64,i32>#has (; 96 ;) (param $0 i32) (param $1 i64) (result i32)
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
 (func $~lib/map/Map<i64,i32>#rehash (; 97 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $14
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $14
   call $~lib/rt/pure/__release
  end
  local.get $11
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $13
  local.get $9
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $13
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
 (func $~lib/map/Map<i64,i32>#set (; 98 ;) (param $0 i32) (param $1 i64) (param $2 i32)
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
 )
 (func $~lib/map/Map<i64,i32>#get (; 99 ;) (param $0 i32) (param $1 i64) (result i32)
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
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
 )
 (func $~lib/map/Map<i64,i32>#get:size (; 100 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/KeyIterator<i64,i32>#constructor (; 101 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 35
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/EntriesIter<i64,i32>#constructor (; 102 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 36
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const -1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/map/Map<i64,i32>#entries (; 103 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/map/EntriesIter<i64,i32>#constructor
 )
 (func $~lib/map/Map<i64,i32>#keys (; 104 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<i64,i32>#entries
  local.tee $1
  call $~lib/map/KeyIterator<i64,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<i64>#constructor (; 105 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 33
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
 (func $~lib/array/Array<i64>#__unchecked_set (; 106 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $~lib/array/Array<i64>#__set (; 107 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 304
    i32.const 576
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
 (func $~lib/array/Array<i64>#set:length (; 108 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array.from<i64,i64> (; 109 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i64>#constructor
  local.set $2
  local.get $0
  call $~lib/iterator/Iterable<i64>#get:iterator
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  call $~lib/iterator/Iterator<i64>#next
  local.set $5
  i32.const 0
  local.set $6
  loop $while-continue|0
   local.get $5
   call $~lib/iterator/IteratorResult<i64>#get:done
   i32.eqz
   local.set $7
   local.get $7
   if
    local.get $1
    if
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     i32.const 1
     global.set $~argumentsLength
     local.get $5
     call $~lib/iterator/IteratorResult<i64>#get:value
     local.get $1
     call_indirect (type $i64_=>_i64)
     call $~lib/array/Array<i64>#__set
    else
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     local.get $5
     call $~lib/iterator/IteratorResult<i64>#get:value
     call $~lib/array/Array<i64>#__set
    end
    local.get $4
    call $~lib/iterator/Iterator<i64>#next
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    local.set $5
    br $while-continue|0
   end
  end
  local.get $2
  local.get $6
  call $~lib/array/Array<i64>#set:length
  local.get $2
  local.set $7
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/map/ValueIterator<i64,i32>#constructor (; 110 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 38
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/Map<i64,i32>#values (; 111 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<i64,i32>#entries
  local.tee $1
  call $~lib/map/ValueIterator<i64,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<i64,i64>#clear (; 112 ;) (param $0 i32)
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
  i32.const 96
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
 (func $~lib/map/Map<i64,i64>#constructor (; 113 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 39
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
 (func $~lib/array/Array<i64>#get:length (; 114 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i64>#__unchecked_get (; 115 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<i64>#__get (; 116 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 576
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
 (func $~lib/map/Map<i64,i64>#find (; 117 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<i64,i64>#rehash (; 118 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $14
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $14
   call $~lib/rt/pure/__release
  end
  local.get $11
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $13
  local.get $9
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $13
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
 (func $~lib/map/Map<i64,i64>#set (; 119 ;) (param $0 i32) (param $1 i64) (param $2 i64)
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
 )
 (func $~lib/map/Map<i64,i64>#get:size (; 120 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i64,i32>#delete (; 121 ;) (param $0 i32) (param $1 i64) (result i32)
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
 (func $std/map/testNumeric<i64,i32> (; 122 ;)
  (local $0 i32)
  (local $1 i64)
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
     i32.const 416
     i32.const 6
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 8
     i32.const 4
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
     i32.const 416
     i32.const 9
     i32.const 4
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
   i32.const 416
   i32.const 11
   i32.const 2
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
     i32.const 416
     i32.const 15
     i32.const 4
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
     i32.const 416
     i32.const 16
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 18
     i32.const 4
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
     i32.const 416
     i32.const 19
     i32.const 4
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
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i64,i32>#keys
  local.tee $2
  i32.const 0
  call $~lib/array/Array.from<i64,i64>
  local.set $3
  local.get $0
  call $~lib/map/Map<i64,i32>#values
  local.tee $4
  i32.const 0
  call $~lib/array/Array.from<i32,i32>
  local.set $5
  i32.const 0
  call $~lib/map/Map<i64,i64>#constructor
  local.set $6
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $7
  i32.const 0
  local.set $8
  loop $for-loop|2
   local.get $8
   local.get $3
   call $~lib/array/Array<i64>#get:length
   i32.lt_s
   local.set $9
   local.get $9
   if
    local.get $3
    local.get $8
    call $~lib/array/Array<i64>#__get
    local.set $1
    local.get $5
    local.get $8
    call $~lib/array/Array<i32>#__get
    local.set $10
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $10
    i32.const 20
    i32.sub
    i64.extend_i32_s
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    local.get $1
    local.get $1
    call $~lib/map/Map<i64,i64>#set
    local.get $7
    local.get $10
    i32.const 20
    i32.sub
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|2
   end
  end
  local.get $6
  call $~lib/map/Map<i64,i64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $1
  loop $for-loop|3
   local.get $1
   i64.const 50
   i64.lt_s
   local.set $8
   local.get $8
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 41
     i32.const 4
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
     i32.const 416
     i32.const 42
     i32.const 4
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
     i32.const 416
     i32.const 44
     i32.const 4
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
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $1
  loop $for-loop|4
   local.get $1
   i64.const 50
   i64.lt_s
   local.set $8
   local.get $8
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 52
     i32.const 4
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
     i32.const 416
     i32.const 54
     i32.const 4
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
   i32.const 416
   i32.const 56
   i32.const 2
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
   i32.const 416
   i32.const 60
   i32.const 2
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
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u64,i32>#clear (; 123 ;) (param $0 i32)
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
 (func $~lib/map/Map<u64,i32>#constructor (; 124 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 42
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
 (func $~lib/map/Map<u64,i32>#find (; 125 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<u64,i32>#has (; 126 ;) (param $0 i32) (param $1 i64) (result i32)
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
 (func $~lib/map/Map<u64,i32>#rehash (; 127 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $14
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $14
   call $~lib/rt/pure/__release
  end
  local.get $11
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $13
  local.get $9
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $13
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
 (func $~lib/map/Map<u64,i32>#set (; 128 ;) (param $0 i32) (param $1 i64) (param $2 i32)
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
 )
 (func $~lib/map/Map<u64,i32>#get (; 129 ;) (param $0 i32) (param $1 i64) (result i32)
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
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
 )
 (func $~lib/map/Map<u64,i32>#get:size (; 130 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/KeyIterator<u64,i32>#constructor (; 131 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 49
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/EntriesIter<u64,i32>#constructor (; 132 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 50
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const -1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/map/Map<u64,i32>#entries (; 133 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/map/EntriesIter<u64,i32>#constructor
 )
 (func $~lib/map/Map<u64,i32>#keys (; 134 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<u64,i32>#entries
  local.tee $1
  call $~lib/map/KeyIterator<u64,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<u64>#constructor (; 135 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 47
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
 (func $~lib/array/Array<u64>#__unchecked_set (; 136 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $~lib/array/Array<u64>#__set (; 137 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 304
    i32.const 576
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
 (func $~lib/array/Array<u64>#set:length (; 138 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array.from<u64,u64> (; 139 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u64>#constructor
  local.set $2
  local.get $0
  call $~lib/iterator/Iterable<u64>#get:iterator
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  call $~lib/iterator/Iterator<u64>#next
  local.set $5
  i32.const 0
  local.set $6
  loop $while-continue|0
   local.get $5
   call $~lib/iterator/IteratorResult<u64>#get:done
   i32.eqz
   local.set $7
   local.get $7
   if
    local.get $1
    if
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     i32.const 1
     global.set $~argumentsLength
     local.get $5
     call $~lib/iterator/IteratorResult<u64>#get:value
     local.get $1
     call_indirect (type $i64_=>_i64)
     call $~lib/array/Array<u64>#__set
    else
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     local.get $5
     call $~lib/iterator/IteratorResult<u64>#get:value
     call $~lib/array/Array<u64>#__set
    end
    local.get $4
    call $~lib/iterator/Iterator<u64>#next
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    local.set $5
    br $while-continue|0
   end
  end
  local.get $2
  local.get $6
  call $~lib/array/Array<u64>#set:length
  local.get $2
  local.set $7
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/map/ValueIterator<u64,i32>#constructor (; 140 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 52
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/Map<u64,i32>#values (; 141 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<u64,i32>#entries
  local.tee $1
  call $~lib/map/ValueIterator<u64,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<u64,u64>#clear (; 142 ;) (param $0 i32)
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
  i32.const 96
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
 (func $~lib/map/Map<u64,u64>#constructor (; 143 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 53
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
 (func $~lib/array/Array<u64>#get:length (; 144 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u64>#__unchecked_get (; 145 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<u64>#__get (; 146 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 576
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
 (func $~lib/map/Map<u64,u64>#find (; 147 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<u64,u64>#rehash (; 148 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $14
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $14
   call $~lib/rt/pure/__release
  end
  local.get $11
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $13
  local.get $9
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $13
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
 (func $~lib/map/Map<u64,u64>#set (; 149 ;) (param $0 i32) (param $1 i64) (param $2 i64)
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
 )
 (func $~lib/map/Map<u64,u64>#get:size (; 150 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u64,i32>#delete (; 151 ;) (param $0 i32) (param $1 i64) (result i32)
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
 (func $std/map/testNumeric<u64,i32> (; 152 ;)
  (local $0 i32)
  (local $1 i64)
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
     i32.const 416
     i32.const 6
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 8
     i32.const 4
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
     i32.const 416
     i32.const 9
     i32.const 4
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
   i32.const 416
   i32.const 11
   i32.const 2
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
     i32.const 416
     i32.const 15
     i32.const 4
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
     i32.const 416
     i32.const 16
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 18
     i32.const 4
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
     i32.const 416
     i32.const 19
     i32.const 4
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
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u64,i32>#keys
  local.tee $2
  i32.const 0
  call $~lib/array/Array.from<u64,u64>
  local.set $3
  local.get $0
  call $~lib/map/Map<u64,i32>#values
  local.tee $4
  i32.const 0
  call $~lib/array/Array.from<i32,i32>
  local.set $5
  i32.const 0
  call $~lib/map/Map<u64,u64>#constructor
  local.set $6
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $7
  i32.const 0
  local.set $8
  loop $for-loop|2
   local.get $8
   local.get $3
   call $~lib/array/Array<u64>#get:length
   i32.lt_s
   local.set $9
   local.get $9
   if
    local.get $3
    local.get $8
    call $~lib/array/Array<u64>#__get
    local.set $1
    local.get $5
    local.get $8
    call $~lib/array/Array<i32>#__get
    local.set $10
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $10
    i32.const 20
    i32.sub
    i64.extend_i32_s
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    local.get $1
    local.get $1
    call $~lib/map/Map<u64,u64>#set
    local.get $7
    local.get $10
    i32.const 20
    i32.sub
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|2
   end
  end
  local.get $6
  call $~lib/map/Map<u64,u64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $1
  loop $for-loop|3
   local.get $1
   i64.const 50
   i64.lt_u
   local.set $8
   local.get $8
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 41
     i32.const 4
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
     i32.const 416
     i32.const 42
     i32.const 4
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
     i32.const 416
     i32.const 44
     i32.const 4
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
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $1
  loop $for-loop|4
   local.get $1
   i64.const 50
   i64.lt_u
   local.set $8
   local.get $8
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 52
     i32.const 4
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
     i32.const 416
     i32.const 54
     i32.const 4
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
   i32.const 416
   i32.const 56
   i32.const 2
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
   i32.const 416
   i32.const 60
   i32.const 2
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
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<f32,i32>#clear (; 153 ;) (param $0 i32)
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
  i32.const 48
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
 (func $~lib/map/Map<f32,i32>#constructor (; 154 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 56
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
 (func $~lib/map/Map<f32,i32>#find (; 155 ;) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<f32,i32>#has (; 156 ;) (param $0 i32) (param $1 f32) (result i32)
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
 (func $~lib/map/Map<f32,i32>#rehash (; 157 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $14
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $14
   call $~lib/rt/pure/__release
  end
  local.get $11
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $13
  local.get $9
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $13
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
 (func $~lib/map/Map<f32,i32>#set (; 158 ;) (param $0 i32) (param $1 f32) (param $2 i32)
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
 )
 (func $~lib/map/Map<f32,i32>#get (; 159 ;) (param $0 i32) (param $1 f32) (result i32)
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
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<f32,i32>#get:size (; 160 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/KeyIterator<f32,i32>#constructor (; 161 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 63
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/EntriesIter<f32,i32>#constructor (; 162 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 64
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const -1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/map/Map<f32,i32>#entries (; 163 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/map/EntriesIter<f32,i32>#constructor
 )
 (func $~lib/map/Map<f32,i32>#keys (; 164 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<f32,i32>#entries
  local.tee $1
  call $~lib/map/KeyIterator<f32,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<f32>#constructor (; 165 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 61
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
 (func $~lib/array/Array<f32>#__unchecked_set (; 166 ;) (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  f32.store
 )
 (func $~lib/array/Array<f32>#__set (; 167 ;) (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 304
    i32.const 576
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
 (func $~lib/array/Array<f32>#set:length (; 168 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array.from<f32,f32> (; 169 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<f32>#constructor
  local.set $2
  local.get $0
  call $~lib/iterator/Iterable<f32>#get:iterator
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  call $~lib/iterator/Iterator<f32>#next
  local.set $5
  i32.const 0
  local.set $6
  loop $while-continue|0
   local.get $5
   call $~lib/iterator/IteratorResult<f32>#get:done
   i32.eqz
   local.set $7
   local.get $7
   if
    local.get $1
    if
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     i32.const 1
     global.set $~argumentsLength
     local.get $5
     call $~lib/iterator/IteratorResult<f32>#get:value
     local.get $1
     call_indirect (type $f32_=>_f32)
     call $~lib/array/Array<f32>#__set
    else
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     local.get $5
     call $~lib/iterator/IteratorResult<f32>#get:value
     call $~lib/array/Array<f32>#__set
    end
    local.get $4
    call $~lib/iterator/Iterator<f32>#next
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    local.set $5
    br $while-continue|0
   end
  end
  local.get $2
  local.get $6
  call $~lib/array/Array<f32>#set:length
  local.get $2
  local.set $7
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/map/ValueIterator<f32,i32>#constructor (; 170 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 66
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/Map<f32,i32>#values (; 171 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<f32,i32>#entries
  local.tee $1
  call $~lib/map/ValueIterator<f32,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<f32,f32>#clear (; 172 ;) (param $0 i32)
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
  i32.const 48
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
 (func $~lib/map/Map<f32,f32>#constructor (; 173 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 67
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
 (func $~lib/array/Array<f32>#get:length (; 174 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f32>#__unchecked_get (; 175 ;) (param $0 i32) (param $1 i32) (result f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $~lib/array/Array<f32>#__get (; 176 ;) (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 576
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
 (func $~lib/map/Map<f32,f32>#find (; 177 ;) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<f32,f32>#rehash (; 178 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $14
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $14
   call $~lib/rt/pure/__release
  end
  local.get $11
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $13
  local.get $9
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $13
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
 (func $~lib/map/Map<f32,f32>#set (; 179 ;) (param $0 i32) (param $1 f32) (param $2 f32)
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
 )
 (func $~lib/map/Map<f32,f32>#get:size (; 180 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<f32,i32>#delete (; 181 ;) (param $0 i32) (param $1 f32) (result i32)
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
 (func $std/map/testNumeric<f32,i32> (; 182 ;)
  (local $0 i32)
  (local $1 f32)
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
     i32.const 416
     i32.const 6
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 8
     i32.const 4
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
     i32.const 416
     i32.const 9
     i32.const 4
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
   i32.const 416
   i32.const 11
   i32.const 2
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
     i32.const 416
     i32.const 15
     i32.const 4
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
     i32.const 416
     i32.const 16
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 18
     i32.const 4
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
     i32.const 416
     i32.const 19
     i32.const 4
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
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f32,i32>#keys
  local.tee $2
  i32.const 0
  call $~lib/array/Array.from<f32,f32>
  local.set $3
  local.get $0
  call $~lib/map/Map<f32,i32>#values
  local.tee $4
  i32.const 0
  call $~lib/array/Array.from<i32,i32>
  local.set $5
  i32.const 0
  call $~lib/map/Map<f32,f32>#constructor
  local.set $6
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $7
  i32.const 0
  local.set $8
  loop $for-loop|2
   local.get $8
   local.get $3
   call $~lib/array/Array<f32>#get:length
   i32.lt_s
   local.set $9
   local.get $9
   if
    local.get $3
    local.get $8
    call $~lib/array/Array<f32>#__get
    local.set $1
    local.get $5
    local.get $8
    call $~lib/array/Array<i32>#__get
    local.set $10
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $10
    i32.const 20
    i32.sub
    f32.convert_i32_s
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    local.get $1
    local.get $1
    call $~lib/map/Map<f32,f32>#set
    local.get $7
    local.get $10
    i32.const 20
    i32.sub
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|2
   end
  end
  local.get $6
  call $~lib/map/Map<f32,f32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $1
  loop $for-loop|3
   local.get $1
   f32.const 50
   f32.lt
   local.set $8
   local.get $8
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 41
     i32.const 4
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
     i32.const 416
     i32.const 42
     i32.const 4
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
     i32.const 416
     i32.const 44
     i32.const 4
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
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $1
  loop $for-loop|4
   local.get $1
   f32.const 50
   f32.lt
   local.set $8
   local.get $8
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 52
     i32.const 4
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
     i32.const 416
     i32.const 54
     i32.const 4
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
   i32.const 416
   i32.const 56
   i32.const 2
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
   i32.const 416
   i32.const 60
   i32.const 2
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
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<f64,i32>#clear (; 183 ;) (param $0 i32)
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
 (func $~lib/map/Map<f64,i32>#constructor (; 184 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 70
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
 (func $~lib/map/Map<f64,i32>#find (; 185 ;) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<f64,i32>#has (; 186 ;) (param $0 i32) (param $1 f64) (result i32)
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
 (func $~lib/map/Map<f64,i32>#rehash (; 187 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $14
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $14
   call $~lib/rt/pure/__release
  end
  local.get $11
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $13
  local.get $9
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $13
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
 (func $~lib/map/Map<f64,i32>#set (; 188 ;) (param $0 i32) (param $1 f64) (param $2 i32)
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
 )
 (func $~lib/map/Map<f64,i32>#get (; 189 ;) (param $0 i32) (param $1 f64) (result i32)
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
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
 )
 (func $~lib/map/Map<f64,i32>#get:size (; 190 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/KeyIterator<f64,i32>#constructor (; 191 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 77
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/EntriesIter<f64,i32>#constructor (; 192 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 78
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const -1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/map/Map<f64,i32>#entries (; 193 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/map/EntriesIter<f64,i32>#constructor
 )
 (func $~lib/map/Map<f64,i32>#keys (; 194 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<f64,i32>#entries
  local.tee $1
  call $~lib/map/KeyIterator<f64,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<f64>#constructor (; 195 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 75
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
 (func $~lib/array/Array<f64>#__unchecked_set (; 196 ;) (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  f64.store
 )
 (func $~lib/array/Array<f64>#__set (; 197 ;) (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 304
    i32.const 576
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
 (func $~lib/array/Array<f64>#set:length (; 198 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array.from<f64,f64> (; 199 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<f64>#constructor
  local.set $2
  local.get $0
  call $~lib/iterator/Iterable<f64>#get:iterator
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  call $~lib/iterator/Iterator<f64>#next
  local.set $5
  i32.const 0
  local.set $6
  loop $while-continue|0
   local.get $5
   call $~lib/iterator/IteratorResult<f64>#get:done
   i32.eqz
   local.set $7
   local.get $7
   if
    local.get $1
    if
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     i32.const 1
     global.set $~argumentsLength
     local.get $5
     call $~lib/iterator/IteratorResult<f64>#get:value
     local.get $1
     call_indirect (type $f64_=>_f64)
     call $~lib/array/Array<f64>#__set
    else
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     local.get $5
     call $~lib/iterator/IteratorResult<f64>#get:value
     call $~lib/array/Array<f64>#__set
    end
    local.get $4
    call $~lib/iterator/Iterator<f64>#next
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    local.set $5
    br $while-continue|0
   end
  end
  local.get $2
  local.get $6
  call $~lib/array/Array<f64>#set:length
  local.get $2
  local.set $7
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/map/ValueIterator<f64,i32>#constructor (; 200 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 80
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/Map<f64,i32>#values (; 201 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<f64,i32>#entries
  local.tee $1
  call $~lib/map/ValueIterator<f64,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<f64,f64>#clear (; 202 ;) (param $0 i32)
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
  i32.const 96
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
 (func $~lib/map/Map<f64,f64>#constructor (; 203 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 81
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
 (func $~lib/array/Array<f64>#get:length (; 204 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f64>#__unchecked_get (; 205 ;) (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/array/Array<f64>#__get (; 206 ;) (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 576
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
 (func $~lib/map/Map<f64,f64>#find (; 207 ;) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<f64,f64>#rehash (; 208 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $14
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $14
   call $~lib/rt/pure/__release
  end
  local.get $11
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $13
  local.get $9
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $13
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
 (func $~lib/map/Map<f64,f64>#set (; 209 ;) (param $0 i32) (param $1 f64) (param $2 f64)
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
 )
 (func $~lib/map/Map<f64,f64>#get:size (; 210 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<f64,i32>#delete (; 211 ;) (param $0 i32) (param $1 f64) (result i32)
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
 (func $std/map/testNumeric<f64,i32> (; 212 ;)
  (local $0 i32)
  (local $1 f64)
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
     i32.const 416
     i32.const 6
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 8
     i32.const 4
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
     i32.const 416
     i32.const 9
     i32.const 4
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
   i32.const 416
   i32.const 11
   i32.const 2
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
     i32.const 416
     i32.const 15
     i32.const 4
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
     i32.const 416
     i32.const 16
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 18
     i32.const 4
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
     i32.const 416
     i32.const 19
     i32.const 4
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
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f64,i32>#keys
  local.tee $2
  i32.const 0
  call $~lib/array/Array.from<f64,f64>
  local.set $3
  local.get $0
  call $~lib/map/Map<f64,i32>#values
  local.tee $4
  i32.const 0
  call $~lib/array/Array.from<i32,i32>
  local.set $5
  i32.const 0
  call $~lib/map/Map<f64,f64>#constructor
  local.set $6
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $7
  i32.const 0
  local.set $8
  loop $for-loop|2
   local.get $8
   local.get $3
   call $~lib/array/Array<f64>#get:length
   i32.lt_s
   local.set $9
   local.get $9
   if
    local.get $3
    local.get $8
    call $~lib/array/Array<f64>#__get
    local.set $1
    local.get $5
    local.get $8
    call $~lib/array/Array<i32>#__get
    local.set $10
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $10
    i32.const 20
    i32.sub
    f64.convert_i32_s
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    local.get $1
    local.get $1
    call $~lib/map/Map<f64,f64>#set
    local.get $7
    local.get $10
    i32.const 20
    i32.sub
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|2
   end
  end
  local.get $6
  call $~lib/map/Map<f64,f64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $1
  loop $for-loop|3
   local.get $1
   f64.const 50
   f64.lt
   local.set $8
   local.get $8
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 41
     i32.const 4
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
     i32.const 416
     i32.const 42
     i32.const 4
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
     i32.const 416
     i32.const 44
     i32.const 4
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
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $1
  loop $for-loop|4
   local.get $1
   f64.const 50
   f64.lt
   local.set $8
   local.get $8
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 52
     i32.const 4
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
     i32.const 416
     i32.const 54
     i32.const 4
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
   i32.const 416
   i32.const 56
   i32.const 2
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
   i32.const 416
   i32.const 60
   i32.const 2
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
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i8,i32>#clear (; 213 ;) (param $0 i32)
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
  i32.const 48
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
 (func $~lib/map/Map<i8,i32>#constructor (; 214 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 84
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
 (func $~lib/util/hash/hash8 (; 215 ;) (param $0 i32) (result i32)
  i32.const -2128831035
  local.get $0
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/map/Map<i8,i32>#find (; 216 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<i8,i32>#has (; 217 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/map/Map<i8,i32>#rehash (; 218 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $13
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $13
   call $~lib/rt/pure/__release
  end
  local.get $11
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
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $11
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
 (func $~lib/map/Map<i8,i32>#set (; 219 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 )
 (func $~lib/map/Map<i8,i32>#get (; 220 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<i8,i32>#get:size (; 221 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/KeyIterator<i8,i32>#constructor (; 222 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 91
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/EntriesIter<i8,i32>#constructor (; 223 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 92
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const -1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/map/Map<i8,i32>#entries (; 224 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/map/EntriesIter<i8,i32>#constructor
 )
 (func $~lib/map/Map<i8,i32>#keys (; 225 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<i8,i32>#entries
  local.tee $1
  call $~lib/map/KeyIterator<i8,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<i8>#constructor (; 226 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 89
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
 (func $~lib/array/Array<i8>#__unchecked_set (; 227 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/array/Array<i8>#__set (; 228 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 304
    i32.const 576
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
 (func $~lib/array/Array<i8>#set:length (; 229 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array.from<i8,i8> (; 230 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i8>#constructor
  local.set $2
  local.get $0
  call $~lib/iterator/Iterable<i8>#get:iterator
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  call $~lib/iterator/Iterator<i8>#next
  local.set $5
  i32.const 0
  local.set $6
  loop $while-continue|0
   local.get $5
   call $~lib/iterator/IteratorResult<i8>#get:done
   i32.eqz
   local.set $7
   local.get $7
   if
    local.get $1
    if
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     i32.const 1
     global.set $~argumentsLength
     local.get $5
     call $~lib/iterator/IteratorResult<i8>#get:value
     local.get $1
     call_indirect (type $i32_=>_i32)
     call $~lib/array/Array<i8>#__set
    else
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     local.get $5
     call $~lib/iterator/IteratorResult<i8>#get:value
     call $~lib/array/Array<i8>#__set
    end
    local.get $4
    call $~lib/iterator/Iterator<i8>#next
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    local.set $5
    br $while-continue|0
   end
  end
  local.get $2
  local.get $6
  call $~lib/array/Array<i8>#set:length
  local.get $2
  local.set $7
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/map/ValueIterator<i8,i32>#constructor (; 231 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 94
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/Map<i8,i32>#values (; 232 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<i8,i32>#entries
  local.tee $1
  call $~lib/map/ValueIterator<i8,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<i8,i8>#clear (; 233 ;) (param $0 i32)
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
 (func $~lib/map/Map<i8,i8>#constructor (; 234 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 95
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
 (func $~lib/array/Array<i8>#get:length (; 235 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i8>#__unchecked_get (; 236 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i8>#__get (; 237 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 576
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
 (func $~lib/map/Map<i8,i8>#find (; 238 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<i8,i8>#rehash (; 239 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $13
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $13
   call $~lib/rt/pure/__release
  end
  local.get $11
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
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $11
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
 (func $~lib/map/Map<i8,i8>#set (; 240 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 )
 (func $~lib/map/Map<i8,i8>#get:size (; 241 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i8,i32>#delete (; 242 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/map/testNumeric<i8,i32> (; 243 ;)
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
     i32.const 416
     i32.const 6
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 8
     i32.const 4
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
     i32.const 416
     i32.const 9
     i32.const 4
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
   i32.const 416
   i32.const 11
   i32.const 2
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
     i32.const 416
     i32.const 15
     i32.const 4
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
     i32.const 416
     i32.const 16
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 18
     i32.const 4
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
     i32.const 416
     i32.const 19
     i32.const 4
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
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i8,i32>#keys
  local.tee $1
  i32.const 0
  call $~lib/array/Array.from<i8,i8>
  local.set $4
  local.get $0
  call $~lib/map/Map<i8,i32>#values
  local.tee $5
  i32.const 0
  call $~lib/array/Array.from<i32,i32>
  local.set $6
  i32.const 0
  call $~lib/map/Map<i8,i8>#constructor
  local.set $7
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $8
  i32.const 0
  local.set $9
  loop $for-loop|4
   local.get $9
   local.get $4
   call $~lib/array/Array<i8>#get:length
   i32.lt_s
   local.set $10
   local.get $10
   if
    local.get $4
    local.get $9
    call $~lib/array/Array<i8>#__get
    local.set $11
    local.get $6
    local.get $9
    call $~lib/array/Array<i32>#__get
    local.set $12
    local.get $0
    local.get $11
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $12
    i32.const 20
    i32.sub
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    local.get $11
    local.get $11
    call $~lib/map/Map<i8,i8>#set
    local.get $8
    local.get $12
    i32.const 20
    i32.sub
    local.get $12
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $for-loop|4
   end
  end
  local.get $7
  call $~lib/map/Map<i8,i8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $9
  loop $for-loop|6
   local.get $9
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 50
   i32.lt_s
   local.set $12
   local.get $12
   if
    local.get $0
    local.get $9
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    call $~lib/map/Map<i8,i32>#get
    i32.const 20
    local.get $9
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    call $~lib/map/Map<i8,i32>#delete
    drop
    local.get $0
    local.get $9
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
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
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $9
  loop $for-loop|8
   local.get $9
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 50
   i32.lt_s
   local.set $11
   local.get $11
   if
    local.get $0
    local.get $9
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    i32.const 10
    local.get $9
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.add
    call $~lib/map/Map<i8,i32>#set
    local.get $0
    local.get $9
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 52
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    call $~lib/map/Map<i8,i32>#delete
    drop
    local.get $0
    local.get $9
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
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
   i32.const 416
   i32.const 56
   i32.const 2
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
   i32.const 416
   i32.const 60
   i32.const 2
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
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u8,i32>#clear (; 244 ;) (param $0 i32)
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
  i32.const 48
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
 (func $~lib/map/Map<u8,i32>#constructor (; 245 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 98
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
 (func $~lib/map/Map<u8,i32>#find (; 246 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<u8,i32>#has (; 247 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/map/Map<u8,i32>#rehash (; 248 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $13
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $13
   call $~lib/rt/pure/__release
  end
  local.get $11
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
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $11
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
 (func $~lib/map/Map<u8,i32>#set (; 249 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 )
 (func $~lib/map/Map<u8,i32>#get (; 250 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<u8,i32>#get:size (; 251 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/KeyIterator<u8,i32>#constructor (; 252 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 105
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/EntriesIter<u8,i32>#constructor (; 253 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 106
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const -1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/map/Map<u8,i32>#entries (; 254 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/map/EntriesIter<u8,i32>#constructor
 )
 (func $~lib/map/Map<u8,i32>#keys (; 255 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<u8,i32>#entries
  local.tee $1
  call $~lib/map/KeyIterator<u8,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<u8>#constructor (; 256 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 103
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
 (func $~lib/array/Array<u8>#__unchecked_set (; 257 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/array/Array<u8>#__set (; 258 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 304
    i32.const 576
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
 (func $~lib/array/Array<u8>#set:length (; 259 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array.from<u8,u8> (; 260 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u8>#constructor
  local.set $2
  local.get $0
  call $~lib/iterator/Iterable<u8>#get:iterator
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  call $~lib/iterator/Iterator<u8>#next
  local.set $5
  i32.const 0
  local.set $6
  loop $while-continue|0
   local.get $5
   call $~lib/iterator/IteratorResult<u8>#get:done
   i32.eqz
   local.set $7
   local.get $7
   if
    local.get $1
    if
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     i32.const 1
     global.set $~argumentsLength
     local.get $5
     call $~lib/iterator/IteratorResult<u8>#get:value
     local.get $1
     call_indirect (type $i32_=>_i32)
     call $~lib/array/Array<u8>#__set
    else
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     local.get $5
     call $~lib/iterator/IteratorResult<u8>#get:value
     call $~lib/array/Array<u8>#__set
    end
    local.get $4
    call $~lib/iterator/Iterator<u8>#next
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    local.set $5
    br $while-continue|0
   end
  end
  local.get $2
  local.get $6
  call $~lib/array/Array<u8>#set:length
  local.get $2
  local.set $7
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/map/ValueIterator<u8,i32>#constructor (; 261 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 108
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/Map<u8,i32>#values (; 262 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<u8,i32>#entries
  local.tee $1
  call $~lib/map/ValueIterator<u8,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<u8,u8>#clear (; 263 ;) (param $0 i32)
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
 (func $~lib/map/Map<u8,u8>#constructor (; 264 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 109
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
 (func $~lib/array/Array<u8>#get:length (; 265 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u8>#__unchecked_get (; 266 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
 )
 (func $~lib/array/Array<u8>#__get (; 267 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 576
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
 (func $~lib/map/Map<u8,u8>#find (; 268 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<u8,u8>#rehash (; 269 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $13
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $13
   call $~lib/rt/pure/__release
  end
  local.get $11
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
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $11
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
 (func $~lib/map/Map<u8,u8>#set (; 270 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 )
 (func $~lib/map/Map<u8,u8>#get:size (; 271 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u8,i32>#delete (; 272 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/map/testNumeric<u8,i32> (; 273 ;)
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
     i32.const 416
     i32.const 6
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 8
     i32.const 4
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
     i32.const 416
     i32.const 9
     i32.const 4
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
   i32.const 416
   i32.const 11
   i32.const 2
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
     i32.const 416
     i32.const 15
     i32.const 4
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
     i32.const 416
     i32.const 16
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 18
     i32.const 4
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
     i32.const 416
     i32.const 19
     i32.const 4
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
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u8,i32>#keys
  local.tee $1
  i32.const 0
  call $~lib/array/Array.from<u8,u8>
  local.set $4
  local.get $0
  call $~lib/map/Map<u8,i32>#values
  local.tee $5
  i32.const 0
  call $~lib/array/Array.from<i32,i32>
  local.set $6
  i32.const 0
  call $~lib/map/Map<u8,u8>#constructor
  local.set $7
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $8
  i32.const 0
  local.set $9
  loop $for-loop|4
   local.get $9
   local.get $4
   call $~lib/array/Array<u8>#get:length
   i32.lt_s
   local.set $10
   local.get $10
   if
    local.get $4
    local.get $9
    call $~lib/array/Array<u8>#__get
    local.set $11
    local.get $6
    local.get $9
    call $~lib/array/Array<i32>#__get
    local.set $12
    local.get $0
    local.get $11
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $12
    i32.const 20
    i32.sub
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    local.get $11
    local.get $11
    call $~lib/map/Map<u8,u8>#set
    local.get $8
    local.get $12
    i32.const 20
    i32.sub
    local.get $12
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $for-loop|4
   end
  end
  local.get $7
  call $~lib/map/Map<u8,u8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $9
  loop $for-loop|6
   local.get $9
   i32.const 255
   i32.and
   i32.const 50
   i32.lt_u
   local.set $12
   local.get $12
   if
    local.get $0
    local.get $9
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    call $~lib/map/Map<u8,i32>#get
    i32.const 20
    local.get $9
    i32.const 255
    i32.and
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    call $~lib/map/Map<u8,i32>#delete
    drop
    local.get $0
    local.get $9
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
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
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $9
  loop $for-loop|8
   local.get $9
   i32.const 255
   i32.and
   i32.const 50
   i32.lt_u
   local.set $11
   local.get $11
   if
    local.get $0
    local.get $9
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    i32.const 10
    local.get $9
    i32.const 255
    i32.and
    i32.add
    call $~lib/map/Map<u8,i32>#set
    local.get $0
    local.get $9
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 52
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    call $~lib/map/Map<u8,i32>#delete
    drop
    local.get $0
    local.get $9
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
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
   i32.const 416
   i32.const 56
   i32.const 2
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
   i32.const 416
   i32.const 60
   i32.const 2
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
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i16,i32>#clear (; 274 ;) (param $0 i32)
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
  i32.const 48
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
 (func $~lib/map/Map<i16,i32>#constructor (; 275 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 112
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
 (func $~lib/util/hash/hash16 (; 276 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<i16,i32>#find (; 277 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<i16,i32>#has (; 278 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/map/Map<i16,i32>#rehash (; 279 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $13
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $13
   call $~lib/rt/pure/__release
  end
  local.get $11
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
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $11
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
 (func $~lib/map/Map<i16,i32>#set (; 280 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 )
 (func $~lib/map/Map<i16,i32>#get (; 281 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<i16,i32>#get:size (; 282 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/KeyIterator<i16,i32>#constructor (; 283 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 119
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/EntriesIter<i16,i32>#constructor (; 284 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 120
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const -1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/map/Map<i16,i32>#entries (; 285 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/map/EntriesIter<i16,i32>#constructor
 )
 (func $~lib/map/Map<i16,i32>#keys (; 286 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<i16,i32>#entries
  local.tee $1
  call $~lib/map/KeyIterator<i16,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<i16>#constructor (; 287 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 117
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
 (func $~lib/array/Array<i16>#__unchecked_set (; 288 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/array/Array<i16>#__set (; 289 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 304
    i32.const 576
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
 (func $~lib/array/Array<i16>#set:length (; 290 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array.from<i16,i16> (; 291 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i16>#constructor
  local.set $2
  local.get $0
  call $~lib/iterator/Iterable<i16>#get:iterator
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  call $~lib/iterator/Iterator<i16>#next
  local.set $5
  i32.const 0
  local.set $6
  loop $while-continue|0
   local.get $5
   call $~lib/iterator/IteratorResult<i16>#get:done
   i32.eqz
   local.set $7
   local.get $7
   if
    local.get $1
    if
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     i32.const 1
     global.set $~argumentsLength
     local.get $5
     call $~lib/iterator/IteratorResult<i16>#get:value
     local.get $1
     call_indirect (type $i32_=>_i32)
     call $~lib/array/Array<i16>#__set
    else
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     local.get $5
     call $~lib/iterator/IteratorResult<i16>#get:value
     call $~lib/array/Array<i16>#__set
    end
    local.get $4
    call $~lib/iterator/Iterator<i16>#next
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    local.set $5
    br $while-continue|0
   end
  end
  local.get $2
  local.get $6
  call $~lib/array/Array<i16>#set:length
  local.get $2
  local.set $7
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/map/ValueIterator<i16,i32>#constructor (; 292 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 122
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/Map<i16,i32>#values (; 293 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<i16,i32>#entries
  local.tee $1
  call $~lib/map/ValueIterator<i16,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<i16,i16>#clear (; 294 ;) (param $0 i32)
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
 (func $~lib/map/Map<i16,i16>#constructor (; 295 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 123
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
 (func $~lib/array/Array<i16>#get:length (; 296 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i16>#__unchecked_get (; 297 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/array/Array<i16>#__get (; 298 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 576
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
 (func $~lib/map/Map<i16,i16>#find (; 299 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<i16,i16>#rehash (; 300 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $13
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $13
   call $~lib/rt/pure/__release
  end
  local.get $11
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
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $11
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
 (func $~lib/map/Map<i16,i16>#set (; 301 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 )
 (func $~lib/map/Map<i16,i16>#get:size (; 302 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i16,i32>#delete (; 303 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/map/testNumeric<i16,i32> (; 304 ;)
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
     i32.const 416
     i32.const 6
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 8
     i32.const 4
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
     i32.const 416
     i32.const 9
     i32.const 4
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
   i32.const 416
   i32.const 11
   i32.const 2
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
     i32.const 416
     i32.const 15
     i32.const 4
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
     i32.const 416
     i32.const 16
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 18
     i32.const 4
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
     i32.const 416
     i32.const 19
     i32.const 4
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
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i16,i32>#keys
  local.tee $1
  i32.const 0
  call $~lib/array/Array.from<i16,i16>
  local.set $4
  local.get $0
  call $~lib/map/Map<i16,i32>#values
  local.tee $5
  i32.const 0
  call $~lib/array/Array.from<i32,i32>
  local.set $6
  i32.const 0
  call $~lib/map/Map<i16,i16>#constructor
  local.set $7
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $8
  i32.const 0
  local.set $9
  loop $for-loop|4
   local.get $9
   local.get $4
   call $~lib/array/Array<i16>#get:length
   i32.lt_s
   local.set $10
   local.get $10
   if
    local.get $4
    local.get $9
    call $~lib/array/Array<i16>#__get
    local.set $11
    local.get $6
    local.get $9
    call $~lib/array/Array<i32>#__get
    local.set $12
    local.get $0
    local.get $11
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $12
    i32.const 20
    i32.sub
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    local.get $11
    local.get $11
    call $~lib/map/Map<i16,i16>#set
    local.get $8
    local.get $12
    i32.const 20
    i32.sub
    local.get $12
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $for-loop|4
   end
  end
  local.get $7
  call $~lib/map/Map<i16,i16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $9
  loop $for-loop|6
   local.get $9
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   i32.const 50
   i32.lt_s
   local.set $12
   local.get $12
   if
    local.get $0
    local.get $9
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    call $~lib/map/Map<i16,i32>#get
    i32.const 20
    local.get $9
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    call $~lib/map/Map<i16,i32>#delete
    drop
    local.get $0
    local.get $9
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
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
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $9
  loop $for-loop|8
   local.get $9
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   i32.const 50
   i32.lt_s
   local.set $11
   local.get $11
   if
    local.get $0
    local.get $9
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    i32.const 10
    local.get $9
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.add
    call $~lib/map/Map<i16,i32>#set
    local.get $0
    local.get $9
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 52
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    call $~lib/map/Map<i16,i32>#delete
    drop
    local.get $0
    local.get $9
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
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
   i32.const 416
   i32.const 56
   i32.const 2
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
   i32.const 416
   i32.const 60
   i32.const 2
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
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u16,i32>#clear (; 305 ;) (param $0 i32)
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
  i32.const 48
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
 (func $~lib/map/Map<u16,i32>#constructor (; 306 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 126
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
 (func $~lib/map/Map<u16,i32>#find (; 307 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<u16,i32>#has (; 308 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/map/Map<u16,i32>#rehash (; 309 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $13
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $13
   call $~lib/rt/pure/__release
  end
  local.get $11
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
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $11
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
 (func $~lib/map/Map<u16,i32>#set (; 310 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 )
 (func $~lib/map/Map<u16,i32>#get (; 311 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<u16,i32>#get:size (; 312 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/KeyIterator<u16,i32>#constructor (; 313 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 133
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/EntriesIter<u16,i32>#constructor (; 314 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 134
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const -1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/map/Map<u16,i32>#entries (; 315 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/map/EntriesIter<u16,i32>#constructor
 )
 (func $~lib/map/Map<u16,i32>#keys (; 316 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<u16,i32>#entries
  local.tee $1
  call $~lib/map/KeyIterator<u16,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<u16>#constructor (; 317 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 131
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
 (func $~lib/array/Array<u16>#__unchecked_set (; 318 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/array/Array<u16>#__set (; 319 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 304
    i32.const 576
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
 (func $~lib/array/Array<u16>#set:length (; 320 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array.from<u16,u16> (; 321 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u16>#constructor
  local.set $2
  local.get $0
  call $~lib/iterator/Iterable<u16>#get:iterator
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  call $~lib/iterator/Iterator<u16>#next
  local.set $5
  i32.const 0
  local.set $6
  loop $while-continue|0
   local.get $5
   call $~lib/iterator/IteratorResult<u16>#get:done
   i32.eqz
   local.set $7
   local.get $7
   if
    local.get $1
    if
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     i32.const 1
     global.set $~argumentsLength
     local.get $5
     call $~lib/iterator/IteratorResult<u16>#get:value
     local.get $1
     call_indirect (type $i32_=>_i32)
     call $~lib/array/Array<u16>#__set
    else
     local.get $2
     local.get $6
     local.tee $8
     i32.const 1
     i32.add
     local.set $6
     local.get $8
     local.get $5
     call $~lib/iterator/IteratorResult<u16>#get:value
     call $~lib/array/Array<u16>#__set
    end
    local.get $4
    call $~lib/iterator/Iterator<u16>#next
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    local.set $5
    br $while-continue|0
   end
  end
  local.get $2
  local.get $6
  call $~lib/array/Array<u16>#set:length
  local.get $2
  local.set $7
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/map/ValueIterator<u16,i32>#constructor (; 322 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 136
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/map/Map<u16,i32>#values (; 323 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/map/Map<u16,i32>#entries
  local.tee $1
  call $~lib/map/ValueIterator<u16,i32>#constructor
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<u16,u16>#clear (; 324 ;) (param $0 i32)
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
 (func $~lib/map/Map<u16,u16>#constructor (; 325 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 137
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
 (func $~lib/array/Array<u16>#get:length (; 326 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u16>#__unchecked_get (; 327 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/array/Array<u16>#__get (; 328 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 576
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
 (func $~lib/map/Map<u16,u16>#find (; 329 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<u16,u16>#rehash (; 330 ;) (param $0 i32) (param $1 i32)
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
  local.tee $9
  local.get $3
  local.tee $11
  local.get $9
  i32.load
  local.tee $13
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $13
   call $~lib/rt/pure/__release
  end
  local.get $11
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
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $11
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
 (func $~lib/map/Map<u16,u16>#set (; 331 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 )
 (func $~lib/map/Map<u16,u16>#get:size (; 332 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u16,i32>#delete (; 333 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/map/testNumeric<u16,i32> (; 334 ;)
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
     i32.const 416
     i32.const 6
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 8
     i32.const 4
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
     i32.const 416
     i32.const 9
     i32.const 4
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
   i32.const 416
   i32.const 11
   i32.const 2
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
     i32.const 416
     i32.const 15
     i32.const 4
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
     i32.const 416
     i32.const 16
     i32.const 4
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
    local.get $0
    local.get $1
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 18
     i32.const 4
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
     i32.const 416
     i32.const 19
     i32.const 4
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
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u16,i32>#keys
  local.tee $1
  i32.const 0
  call $~lib/array/Array.from<u16,u16>
  local.set $4
  local.get $0
  call $~lib/map/Map<u16,i32>#values
  local.tee $5
  i32.const 0
  call $~lib/array/Array.from<i32,i32>
  local.set $6
  i32.const 0
  call $~lib/map/Map<u16,u16>#constructor
  local.set $7
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $8
  i32.const 0
  local.set $9
  loop $for-loop|4
   local.get $9
   local.get $4
   call $~lib/array/Array<u16>#get:length
   i32.lt_s
   local.set $10
   local.get $10
   if
    local.get $4
    local.get $9
    call $~lib/array/Array<u16>#__get
    local.set $11
    local.get $6
    local.get $9
    call $~lib/array/Array<i32>#__get
    local.set $12
    local.get $0
    local.get $11
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $12
    i32.const 20
    i32.sub
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    local.get $11
    local.get $11
    call $~lib/map/Map<u16,u16>#set
    local.get $8
    local.get $12
    i32.const 20
    i32.sub
    local.get $12
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $for-loop|4
   end
  end
  local.get $7
  call $~lib/map/Map<u16,u16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $9
  loop $for-loop|6
   local.get $9
   i32.const 65535
   i32.and
   i32.const 50
   i32.lt_u
   local.set $12
   local.get $12
   if
    local.get $0
    local.get $9
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    call $~lib/map/Map<u16,i32>#get
    i32.const 20
    local.get $9
    i32.const 65535
    i32.and
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    call $~lib/map/Map<u16,i32>#delete
    drop
    local.get $0
    local.get $9
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
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
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $9
  loop $for-loop|8
   local.get $9
   i32.const 65535
   i32.and
   i32.const 50
   i32.lt_u
   local.set $11
   local.get $11
   if
    local.get $0
    local.get $9
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    i32.const 10
    local.get $9
    i32.const 65535
    i32.and
    i32.add
    call $~lib/map/Map<u16,i32>#set
    local.get $0
    local.get $9
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 52
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $9
    call $~lib/map/Map<u16,i32>#delete
    drop
    local.get $0
    local.get $9
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
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
   i32.const 416
   i32.const 56
   i32.const 2
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
   i32.const 416
   i32.const 60
   i32.const 2
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
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:std/map (; 335 ;)
  call $std/map/testNumeric<i32,i32>
  call $std/map/testNumeric<u32,i32>
  call $std/map/testNumeric<i64,i32>
  call $std/map/testNumeric<u64,i32>
  call $std/map/testNumeric<f32,i32>
  call $std/map/testNumeric<f64,i32>
  call $std/map/testNumeric<i8,i32>
  call $std/map/testNumeric<u8,i32>
  call $std/map/testNumeric<i16,i32>
  call $std/map/testNumeric<u16,i32>
 )
 (func $~start (; 336 ;)
  call $start:std/map
 )
 (func $~lib/rt/pure/__visit (; 337 ;) (param $0 i32) (param $1 i32)
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
        i32.const 144
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
      i32.const 144
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
    i32.const 144
    i32.const 97
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $~lib/map/Map<i32,i32>#__visit_impl (; 338 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<i32>#__visit_impl (; 339 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/map/Map<u32,i32>#__visit_impl (; 340 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<u32>#__visit_impl (; 341 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/map/Map<u32,u32>#__visit_impl (; 342 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/map/Map<i64,i32>#__visit_impl (; 343 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<i64>#__visit_impl (; 344 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/map/Map<i64,i64>#__visit_impl (; 345 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/map/Map<u64,i32>#__visit_impl (; 346 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<u64>#__visit_impl (; 347 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/map/Map<u64,u64>#__visit_impl (; 348 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/map/Map<f32,i32>#__visit_impl (; 349 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<f32>#__visit_impl (; 350 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/map/Map<f32,f32>#__visit_impl (; 351 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/map/Map<f64,i32>#__visit_impl (; 352 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<f64>#__visit_impl (; 353 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/map/Map<f64,f64>#__visit_impl (; 354 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/map/Map<i8,i32>#__visit_impl (; 355 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<i8>#__visit_impl (; 356 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/map/Map<i8,i8>#__visit_impl (; 357 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/map/Map<u8,i32>#__visit_impl (; 358 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<u8>#__visit_impl (; 359 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/map/Map<u8,u8>#__visit_impl (; 360 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/map/Map<i16,i32>#__visit_impl (; 361 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<i16>#__visit_impl (; 362 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/map/Map<i16,i16>#__visit_impl (; 363 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/map/Map<u16,i32>#__visit_impl (; 364 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<u16>#__visit_impl (; 365 ;) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/map/Map<u16,u16>#__visit_impl (; 366 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/rt/__visit_members (; 367 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$4$break
   block $switch$1$default
    block $switch$1$case$139
     block $switch$1$case$133
      block $switch$1$case$128
       block $switch$1$case$125
        block $switch$1$case$119
         block $switch$1$case$114
          block $switch$1$case$111
           block $switch$1$case$105
            block $switch$1$case$100
             block $switch$1$case$97
              block $switch$1$case$91
               block $switch$1$case$86
                block $switch$1$case$83
                 block $switch$1$case$77
                  block $switch$1$case$72
                   block $switch$1$case$69
                    block $switch$1$case$63
                     block $switch$1$case$58
                      block $switch$1$case$55
                       block $switch$1$case$49
                        block $switch$1$case$44
                         block $switch$1$case$41
                          block $switch$1$case$35
                           block $switch$1$case$30
                            block $switch$1$case$27
                             block $switch$1$case$21
                              block $switch$1$case$16
                               block $switch$1$case$10
                                block $switch$1$case$5
                                 block $switch$1$case$4
                                  block $switch$1$case$2
                                   local.get $0
                                   i32.const 8
                                   i32.sub
                                   i32.load
                                   br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$5 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$10 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$16 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$21 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$27 $switch$1$case$2 $switch$1$case$2 $switch$1$case$30 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$35 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$41 $switch$1$case$2 $switch$1$case$2 $switch$1$case$44 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$49 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$55 $switch$1$case$2 $switch$1$case$2 $switch$1$case$58 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$63 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$69 $switch$1$case$2 $switch$1$case$2 $switch$1$case$72 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$77 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$83 $switch$1$case$2 $switch$1$case$2 $switch$1$case$86 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$91 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$97 $switch$1$case$2 $switch$1$case$2 $switch$1$case$100 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$105 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$111 $switch$1$case$2 $switch$1$case$2 $switch$1$case$114 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$119 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$125 $switch$1$case$2 $switch$1$case$2 $switch$1$case$128 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$133 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$139 $switch$1$case$2 $switch$1$case$2 $switch$1$default
                                  end
                                  return
                                 end
                                 br $block$4$break
                                end
                                local.get $0
                                local.get $1
                                call $~lib/map/Map<i32,i32>#__visit_impl
                                return
                               end
                               local.get $0
                               local.get $1
                               call $~lib/array/Array<i32>#__visit_impl
                               br $block$4$break
                              end
                              local.get $0
                              local.get $1
                              call $~lib/map/Map<u32,i32>#__visit_impl
                              return
                             end
                             local.get $0
                             local.get $1
                             call $~lib/array/Array<u32>#__visit_impl
                             br $block$4$break
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
                          br $block$4$break
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
                       br $block$4$break
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
                    br $block$4$break
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
                 br $block$4$break
                end
                local.get $0
                local.get $1
                call $~lib/map/Map<f64,f64>#__visit_impl
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
              br $block$4$break
             end
             local.get $0
             local.get $1
             call $~lib/map/Map<i8,i8>#__visit_impl
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
           br $block$4$break
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
        br $block$4$break
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
     br $block$4$break
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u16,u16>#__visit_impl
    return
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
 (func $~lib/map/KeyIterator<i32,i32>#get:iterator (; 368 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<i32,i32>#get:iterator (; 369 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<u32,i32>#get:iterator (; 370 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<i64,i32>#get:iterator (; 371 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<u64,i32>#get:iterator (; 372 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<f32,i32>#get:iterator (; 373 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<f64,i32>#get:iterator (; 374 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<i8,i32>#get:iterator (; 375 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<u8,i32>#get:iterator (; 376 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<i16,i32>#get:iterator (; 377 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<u16,i32>#get:iterator (; 378 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterable<i32>#get:iterator (; 379 ;) (param $0 i32) (result i32)
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
            block $switch$1$case$3
             block $switch$1$default
              local.get $0
              i32.const 8
              i32.sub
              i32.load
              br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default $switch$1$default $switch$1$case$4 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$5 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$6 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$7 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$8 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$9 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$10 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$11 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$12 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$13 $switch$1$default
             end
             unreachable
            end
            local.get $0
            call $~lib/map/KeyIterator<i32,i32>#get:iterator
            return
           end
           local.get $0
           call $~lib/map/ValueIterator<i32,i32>#get:iterator
           return
          end
          local.get $0
          call $~lib/map/ValueIterator<u32,i32>#get:iterator
          return
         end
         local.get $0
         call $~lib/map/ValueIterator<i64,i32>#get:iterator
         return
        end
        local.get $0
        call $~lib/map/ValueIterator<u64,i32>#get:iterator
        return
       end
       local.get $0
       call $~lib/map/ValueIterator<f32,i32>#get:iterator
       return
      end
      local.get $0
      call $~lib/map/ValueIterator<f64,i32>#get:iterator
      return
     end
     local.get $0
     call $~lib/map/ValueIterator<i8,i32>#get:iterator
     return
    end
    local.get $0
    call $~lib/map/ValueIterator<u8,i32>#get:iterator
    return
   end
   local.get $0
   call $~lib/map/ValueIterator<i16,i32>#get:iterator
   return
  end
  local.get $0
  call $~lib/map/ValueIterator<u16,i32>#get:iterator
  return
 )
 (func $~lib/map/EntriesIter<i32,i32>#get:done (; 380 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.ge_u
 )
 (func $~lib/map/EntriesIter<i32,i32>#get:entry (; 381 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.const 12
  i32.mul
  i32.add
 )
 (func $~lib/map/EntriesIter<i32,i32>#next (; 382 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  loop $while-continue|0
   local.get $0
   call $~lib/map/EntriesIter<i32,i32>#get:done
   i32.eqz
   if (result i32)
    local.get $0
    call $~lib/map/EntriesIter<i32,i32>#get:entry
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    i32.eqz
   else
    i32.const 0
   end
   local.set $1
   local.get $1
   if
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/KeyIterator<i32,i32>#next (; 383 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i32,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<i32,i32>#next (; 384 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i32,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/EntriesIter<u32,i32>#get:done (; 385 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.ge_u
 )
 (func $~lib/map/EntriesIter<u32,i32>#get:entry (; 386 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.const 12
  i32.mul
  i32.add
 )
 (func $~lib/map/EntriesIter<u32,i32>#next (; 387 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  loop $while-continue|0
   local.get $0
   call $~lib/map/EntriesIter<u32,i32>#get:done
   i32.eqz
   if (result i32)
    local.get $0
    call $~lib/map/EntriesIter<u32,i32>#get:entry
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    i32.eqz
   else
    i32.const 0
   end
   local.set $1
   local.get $1
   if
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<u32,i32>#next (; 388 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u32,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/EntriesIter<i64,i32>#get:done (; 389 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.ge_u
 )
 (func $~lib/map/EntriesIter<i64,i32>#get:entry (; 390 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.const 16
  i32.mul
  i32.add
 )
 (func $~lib/map/EntriesIter<i64,i32>#next (; 391 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  loop $while-continue|0
   local.get $0
   call $~lib/map/EntriesIter<i64,i32>#get:done
   i32.eqz
   if (result i32)
    local.get $0
    call $~lib/map/EntriesIter<i64,i32>#get:entry
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    i32.eqz
   else
    i32.const 0
   end
   local.set $1
   local.get $1
   if
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<i64,i32>#next (; 392 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i64,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/EntriesIter<u64,i32>#get:done (; 393 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.ge_u
 )
 (func $~lib/map/EntriesIter<u64,i32>#get:entry (; 394 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.const 16
  i32.mul
  i32.add
 )
 (func $~lib/map/EntriesIter<u64,i32>#next (; 395 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  loop $while-continue|0
   local.get $0
   call $~lib/map/EntriesIter<u64,i32>#get:done
   i32.eqz
   if (result i32)
    local.get $0
    call $~lib/map/EntriesIter<u64,i32>#get:entry
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    i32.eqz
   else
    i32.const 0
   end
   local.set $1
   local.get $1
   if
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<u64,i32>#next (; 396 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u64,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/EntriesIter<f32,i32>#get:done (; 397 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.ge_u
 )
 (func $~lib/map/EntriesIter<f32,i32>#get:entry (; 398 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.const 12
  i32.mul
  i32.add
 )
 (func $~lib/map/EntriesIter<f32,i32>#next (; 399 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  loop $while-continue|0
   local.get $0
   call $~lib/map/EntriesIter<f32,i32>#get:done
   i32.eqz
   if (result i32)
    local.get $0
    call $~lib/map/EntriesIter<f32,i32>#get:entry
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    i32.eqz
   else
    i32.const 0
   end
   local.set $1
   local.get $1
   if
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<f32,i32>#next (; 400 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<f32,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/EntriesIter<f64,i32>#get:done (; 401 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.ge_u
 )
 (func $~lib/map/EntriesIter<f64,i32>#get:entry (; 402 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.const 16
  i32.mul
  i32.add
 )
 (func $~lib/map/EntriesIter<f64,i32>#next (; 403 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  loop $while-continue|0
   local.get $0
   call $~lib/map/EntriesIter<f64,i32>#get:done
   i32.eqz
   if (result i32)
    local.get $0
    call $~lib/map/EntriesIter<f64,i32>#get:entry
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    i32.eqz
   else
    i32.const 0
   end
   local.set $1
   local.get $1
   if
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<f64,i32>#next (; 404 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<f64,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/EntriesIter<i8,i32>#get:done (; 405 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.ge_u
 )
 (func $~lib/map/EntriesIter<i8,i32>#get:entry (; 406 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.const 12
  i32.mul
  i32.add
 )
 (func $~lib/map/EntriesIter<i8,i32>#next (; 407 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  loop $while-continue|0
   local.get $0
   call $~lib/map/EntriesIter<i8,i32>#get:done
   i32.eqz
   if (result i32)
    local.get $0
    call $~lib/map/EntriesIter<i8,i32>#get:entry
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    i32.eqz
   else
    i32.const 0
   end
   local.set $1
   local.get $1
   if
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<i8,i32>#next (; 408 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i8,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/EntriesIter<u8,i32>#get:done (; 409 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.ge_u
 )
 (func $~lib/map/EntriesIter<u8,i32>#get:entry (; 410 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.const 12
  i32.mul
  i32.add
 )
 (func $~lib/map/EntriesIter<u8,i32>#next (; 411 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  loop $while-continue|0
   local.get $0
   call $~lib/map/EntriesIter<u8,i32>#get:done
   i32.eqz
   if (result i32)
    local.get $0
    call $~lib/map/EntriesIter<u8,i32>#get:entry
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    i32.eqz
   else
    i32.const 0
   end
   local.set $1
   local.get $1
   if
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<u8,i32>#next (; 412 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u8,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/EntriesIter<i16,i32>#get:done (; 413 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.ge_u
 )
 (func $~lib/map/EntriesIter<i16,i32>#get:entry (; 414 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.const 12
  i32.mul
  i32.add
 )
 (func $~lib/map/EntriesIter<i16,i32>#next (; 415 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  loop $while-continue|0
   local.get $0
   call $~lib/map/EntriesIter<i16,i32>#get:done
   i32.eqz
   if (result i32)
    local.get $0
    call $~lib/map/EntriesIter<i16,i32>#get:entry
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    i32.eqz
   else
    i32.const 0
   end
   local.set $1
   local.get $1
   if
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<i16,i32>#next (; 416 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i16,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/EntriesIter<u16,i32>#get:done (; 417 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.ge_u
 )
 (func $~lib/map/EntriesIter<u16,i32>#get:entry (; 418 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.const 12
  i32.mul
  i32.add
 )
 (func $~lib/map/EntriesIter<u16,i32>#next (; 419 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  loop $while-continue|0
   local.get $0
   call $~lib/map/EntriesIter<u16,i32>#get:done
   i32.eqz
   if (result i32)
    local.get $0
    call $~lib/map/EntriesIter<u16,i32>#get:entry
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    i32.eqz
   else
    i32.const 0
   end
   local.set $1
   local.get $1
   if
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<u16,i32>#next (; 420 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u16,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterator<i32>#next (; 421 ;) (param $0 i32) (result i32)
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
            block $switch$1$case$3
             block $switch$1$default
              local.get $0
              i32.const 8
              i32.sub
              i32.load
              br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default $switch$1$default $switch$1$case$4 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$5 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$6 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$7 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$8 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$9 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$10 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$11 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$12 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$13 $switch$1$default
             end
             unreachable
            end
            local.get $0
            call $~lib/map/KeyIterator<i32,i32>#next
            return
           end
           local.get $0
           call $~lib/map/ValueIterator<i32,i32>#next
           return
          end
          local.get $0
          call $~lib/map/ValueIterator<u32,i32>#next
          return
         end
         local.get $0
         call $~lib/map/ValueIterator<i64,i32>#next
         return
        end
        local.get $0
        call $~lib/map/ValueIterator<u64,i32>#next
        return
       end
       local.get $0
       call $~lib/map/ValueIterator<f32,i32>#next
       return
      end
      local.get $0
      call $~lib/map/ValueIterator<f64,i32>#next
      return
     end
     local.get $0
     call $~lib/map/ValueIterator<i8,i32>#next
     return
    end
    local.get $0
    call $~lib/map/ValueIterator<u8,i32>#next
    return
   end
   local.get $0
   call $~lib/map/ValueIterator<i16,i32>#next
   return
  end
  local.get $0
  call $~lib/map/ValueIterator<u16,i32>#next
  return
 )
 (func $~lib/map/KeyIterator<i32,i32>#get:done (; 422 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i32,i32>#get:done
 )
 (func $~lib/map/ValueIterator<i32,i32>#get:done (; 423 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i32,i32>#get:done
 )
 (func $~lib/map/ValueIterator<u32,i32>#get:done (; 424 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u32,i32>#get:done
 )
 (func $~lib/map/ValueIterator<i64,i32>#get:done (; 425 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i64,i32>#get:done
 )
 (func $~lib/map/ValueIterator<u64,i32>#get:done (; 426 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u64,i32>#get:done
 )
 (func $~lib/map/ValueIterator<f32,i32>#get:done (; 427 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<f32,i32>#get:done
 )
 (func $~lib/map/ValueIterator<f64,i32>#get:done (; 428 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<f64,i32>#get:done
 )
 (func $~lib/map/ValueIterator<i8,i32>#get:done (; 429 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i8,i32>#get:done
 )
 (func $~lib/map/ValueIterator<u8,i32>#get:done (; 430 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u8,i32>#get:done
 )
 (func $~lib/map/ValueIterator<i16,i32>#get:done (; 431 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i16,i32>#get:done
 )
 (func $~lib/map/ValueIterator<u16,i32>#get:done (; 432 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u16,i32>#get:done
 )
 (func $~lib/iterator/IteratorResult<i32>#get:done (; 433 ;) (param $0 i32) (result i32)
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
            block $switch$1$case$3
             block $switch$1$default
              local.get $0
              i32.const 8
              i32.sub
              i32.load
              br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default $switch$1$default $switch$1$case$4 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$5 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$6 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$7 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$8 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$9 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$10 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$11 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$12 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$13 $switch$1$default
             end
             unreachable
            end
            local.get $0
            call $~lib/map/KeyIterator<i32,i32>#get:done
            return
           end
           local.get $0
           call $~lib/map/ValueIterator<i32,i32>#get:done
           return
          end
          local.get $0
          call $~lib/map/ValueIterator<u32,i32>#get:done
          return
         end
         local.get $0
         call $~lib/map/ValueIterator<i64,i32>#get:done
         return
        end
        local.get $0
        call $~lib/map/ValueIterator<u64,i32>#get:done
        return
       end
       local.get $0
       call $~lib/map/ValueIterator<f32,i32>#get:done
       return
      end
      local.get $0
      call $~lib/map/ValueIterator<f64,i32>#get:done
      return
     end
     local.get $0
     call $~lib/map/ValueIterator<i8,i32>#get:done
     return
    end
    local.get $0
    call $~lib/map/ValueIterator<u8,i32>#get:done
    return
   end
   local.get $0
   call $~lib/map/ValueIterator<i16,i32>#get:done
   return
  end
  local.get $0
  call $~lib/map/ValueIterator<u16,i32>#get:done
  return
 )
 (func $~lib/map/EntriesIter<i32,i32>#get:value (; 434 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/map/EntriesIter<i32,i32>#get:entry
 )
 (func $~lib/map/KeyIterator<i32,i32>#get:value (; 435 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i32,i32>#get:value
  i32.load
 )
 (func $~lib/map/ValueIterator<i32,i32>#get:value (; 436 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i32,i32>#get:value
  i32.load offset=4
 )
 (func $~lib/map/EntriesIter<u32,i32>#get:value (; 437 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/map/EntriesIter<u32,i32>#get:entry
 )
 (func $~lib/map/ValueIterator<u32,i32>#get:value (; 438 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u32,i32>#get:value
  i32.load offset=4
 )
 (func $~lib/map/EntriesIter<i64,i32>#get:value (; 439 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/map/EntriesIter<i64,i32>#get:entry
 )
 (func $~lib/map/ValueIterator<i64,i32>#get:value (; 440 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i64,i32>#get:value
  i32.load offset=8
 )
 (func $~lib/map/EntriesIter<u64,i32>#get:value (; 441 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/map/EntriesIter<u64,i32>#get:entry
 )
 (func $~lib/map/ValueIterator<u64,i32>#get:value (; 442 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u64,i32>#get:value
  i32.load offset=8
 )
 (func $~lib/map/EntriesIter<f32,i32>#get:value (; 443 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/map/EntriesIter<f32,i32>#get:entry
 )
 (func $~lib/map/ValueIterator<f32,i32>#get:value (; 444 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<f32,i32>#get:value
  i32.load offset=4
 )
 (func $~lib/map/EntriesIter<f64,i32>#get:value (; 445 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/map/EntriesIter<f64,i32>#get:entry
 )
 (func $~lib/map/ValueIterator<f64,i32>#get:value (; 446 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<f64,i32>#get:value
  i32.load offset=8
 )
 (func $~lib/map/EntriesIter<i8,i32>#get:value (; 447 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/map/EntriesIter<i8,i32>#get:entry
 )
 (func $~lib/map/ValueIterator<i8,i32>#get:value (; 448 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i8,i32>#get:value
  i32.load offset=4
 )
 (func $~lib/map/EntriesIter<u8,i32>#get:value (; 449 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/map/EntriesIter<u8,i32>#get:entry
 )
 (func $~lib/map/ValueIterator<u8,i32>#get:value (; 450 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u8,i32>#get:value
  i32.load offset=4
 )
 (func $~lib/map/EntriesIter<i16,i32>#get:value (; 451 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/map/EntriesIter<i16,i32>#get:entry
 )
 (func $~lib/map/ValueIterator<i16,i32>#get:value (; 452 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i16,i32>#get:value
  i32.load offset=4
 )
 (func $~lib/map/EntriesIter<u16,i32>#get:value (; 453 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/map/EntriesIter<u16,i32>#get:entry
 )
 (func $~lib/map/ValueIterator<u16,i32>#get:value (; 454 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u16,i32>#get:value
  i32.load offset=4
 )
 (func $~lib/iterator/IteratorResult<i32>#get:value (; 455 ;) (param $0 i32) (result i32)
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
            block $switch$1$case$3
             block $switch$1$default
              local.get $0
              i32.const 8
              i32.sub
              i32.load
              br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default $switch$1$default $switch$1$case$4 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$5 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$6 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$7 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$8 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$9 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$10 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$11 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$12 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$13 $switch$1$default
             end
             unreachable
            end
            local.get $0
            call $~lib/map/KeyIterator<i32,i32>#get:value
            return
           end
           local.get $0
           call $~lib/map/ValueIterator<i32,i32>#get:value
           return
          end
          local.get $0
          call $~lib/map/ValueIterator<u32,i32>#get:value
          return
         end
         local.get $0
         call $~lib/map/ValueIterator<i64,i32>#get:value
         return
        end
        local.get $0
        call $~lib/map/ValueIterator<u64,i32>#get:value
        return
       end
       local.get $0
       call $~lib/map/ValueIterator<f32,i32>#get:value
       return
      end
      local.get $0
      call $~lib/map/ValueIterator<f64,i32>#get:value
      return
     end
     local.get $0
     call $~lib/map/ValueIterator<i8,i32>#get:value
     return
    end
    local.get $0
    call $~lib/map/ValueIterator<u8,i32>#get:value
    return
   end
   local.get $0
   call $~lib/map/ValueIterator<i16,i32>#get:value
   return
  end
  local.get $0
  call $~lib/map/ValueIterator<u16,i32>#get:value
  return
 )
 (func $~lib/map/KeyIterator<u32,i32>#get:iterator (; 456 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterable<u32>#get:iterator (; 457 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u32,i32>#get:iterator
  return
 )
 (func $~lib/map/KeyIterator<u32,i32>#next (; 458 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u32,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterator<u32>#next (; 459 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u32,i32>#next
  return
 )
 (func $~lib/map/KeyIterator<u32,i32>#get:done (; 460 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u32,i32>#get:done
 )
 (func $~lib/iterator/IteratorResult<u32>#get:done (; 461 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u32,i32>#get:done
  return
 )
 (func $~lib/map/KeyIterator<u32,i32>#get:value (; 462 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u32,i32>#get:value
  i32.load
 )
 (func $~lib/iterator/IteratorResult<u32>#get:value (; 463 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u32,i32>#get:value
  return
 )
 (func $~lib/map/KeyIterator<i64,i32>#get:iterator (; 464 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterable<i64>#get:iterator (; 465 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i64,i32>#get:iterator
  return
 )
 (func $~lib/map/KeyIterator<i64,i32>#next (; 466 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i64,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterator<i64>#next (; 467 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i64,i32>#next
  return
 )
 (func $~lib/map/KeyIterator<i64,i32>#get:done (; 468 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i64,i32>#get:done
 )
 (func $~lib/iterator/IteratorResult<i64>#get:done (; 469 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i64,i32>#get:done
  return
 )
 (func $~lib/map/KeyIterator<i64,i32>#get:value (; 470 ;) (param $0 i32) (result i64)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i64,i32>#get:value
  i64.load
 )
 (func $~lib/iterator/IteratorResult<i64>#get:value (; 471 ;) (param $0 i32) (result i64)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i64,i32>#get:value
  return
 )
 (func $~lib/map/KeyIterator<u64,i32>#get:iterator (; 472 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterable<u64>#get:iterator (; 473 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u64,i32>#get:iterator
  return
 )
 (func $~lib/map/KeyIterator<u64,i32>#next (; 474 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u64,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterator<u64>#next (; 475 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u64,i32>#next
  return
 )
 (func $~lib/map/KeyIterator<u64,i32>#get:done (; 476 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u64,i32>#get:done
 )
 (func $~lib/iterator/IteratorResult<u64>#get:done (; 477 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u64,i32>#get:done
  return
 )
 (func $~lib/map/KeyIterator<u64,i32>#get:value (; 478 ;) (param $0 i32) (result i64)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u64,i32>#get:value
  i64.load
 )
 (func $~lib/iterator/IteratorResult<u64>#get:value (; 479 ;) (param $0 i32) (result i64)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u64,i32>#get:value
  return
 )
 (func $~lib/map/KeyIterator<f32,i32>#get:iterator (; 480 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterable<f32>#get:iterator (; 481 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<f32,i32>#get:iterator
  return
 )
 (func $~lib/map/KeyIterator<f32,i32>#next (; 482 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<f32,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterator<f32>#next (; 483 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<f32,i32>#next
  return
 )
 (func $~lib/map/KeyIterator<f32,i32>#get:done (; 484 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<f32,i32>#get:done
 )
 (func $~lib/iterator/IteratorResult<f32>#get:done (; 485 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<f32,i32>#get:done
  return
 )
 (func $~lib/map/KeyIterator<f32,i32>#get:value (; 486 ;) (param $0 i32) (result f32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<f32,i32>#get:value
  f32.load
 )
 (func $~lib/iterator/IteratorResult<f32>#get:value (; 487 ;) (param $0 i32) (result f32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<f32,i32>#get:value
  return
 )
 (func $~lib/map/KeyIterator<f64,i32>#get:iterator (; 488 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterable<f64>#get:iterator (; 489 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<f64,i32>#get:iterator
  return
 )
 (func $~lib/map/KeyIterator<f64,i32>#next (; 490 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<f64,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterator<f64>#next (; 491 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<f64,i32>#next
  return
 )
 (func $~lib/map/KeyIterator<f64,i32>#get:done (; 492 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<f64,i32>#get:done
 )
 (func $~lib/iterator/IteratorResult<f64>#get:done (; 493 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<f64,i32>#get:done
  return
 )
 (func $~lib/map/KeyIterator<f64,i32>#get:value (; 494 ;) (param $0 i32) (result f64)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<f64,i32>#get:value
  f64.load
 )
 (func $~lib/iterator/IteratorResult<f64>#get:value (; 495 ;) (param $0 i32) (result f64)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<f64,i32>#get:value
  return
 )
 (func $~lib/map/KeyIterator<i8,i32>#get:iterator (; 496 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterable<i8>#get:iterator (; 497 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i8,i32>#get:iterator
  return
 )
 (func $~lib/map/KeyIterator<i8,i32>#next (; 498 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i8,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterator<i8>#next (; 499 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i8,i32>#next
  return
 )
 (func $~lib/map/KeyIterator<i8,i32>#get:done (; 500 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i8,i32>#get:done
 )
 (func $~lib/iterator/IteratorResult<i8>#get:done (; 501 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i8,i32>#get:done
  return
 )
 (func $~lib/map/KeyIterator<i8,i32>#get:value (; 502 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i8,i32>#get:value
  i32.load8_s
 )
 (func $~lib/iterator/IteratorResult<i8>#get:value (; 503 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i8,i32>#get:value
  return
 )
 (func $~lib/map/KeyIterator<u8,i32>#get:iterator (; 504 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterable<u8>#get:iterator (; 505 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u8,i32>#get:iterator
  return
 )
 (func $~lib/map/KeyIterator<u8,i32>#next (; 506 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u8,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterator<u8>#next (; 507 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u8,i32>#next
  return
 )
 (func $~lib/map/KeyIterator<u8,i32>#get:done (; 508 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u8,i32>#get:done
 )
 (func $~lib/iterator/IteratorResult<u8>#get:done (; 509 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u8,i32>#get:done
  return
 )
 (func $~lib/map/KeyIterator<u8,i32>#get:value (; 510 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u8,i32>#get:value
  i32.load8_u
 )
 (func $~lib/iterator/IteratorResult<u8>#get:value (; 511 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u8,i32>#get:value
  return
 )
 (func $~lib/map/KeyIterator<i16,i32>#get:iterator (; 512 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterable<i16>#get:iterator (; 513 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i16,i32>#get:iterator
  return
 )
 (func $~lib/map/KeyIterator<i16,i32>#next (; 514 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i16,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterator<i16>#next (; 515 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i16,i32>#next
  return
 )
 (func $~lib/map/KeyIterator<i16,i32>#get:done (; 516 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i16,i32>#get:done
 )
 (func $~lib/iterator/IteratorResult<i16>#get:done (; 517 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i16,i32>#get:done
  return
 )
 (func $~lib/map/KeyIterator<i16,i32>#get:value (; 518 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i16,i32>#get:value
  i32.load16_s
 )
 (func $~lib/iterator/IteratorResult<i16>#get:value (; 519 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i16,i32>#get:value
  return
 )
 (func $~lib/map/KeyIterator<u16,i32>#get:iterator (; 520 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterable<u16>#get:iterator (; 521 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u16,i32>#get:iterator
  return
 )
 (func $~lib/map/KeyIterator<u16,i32>#next (; 522 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u16,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterator<u16>#next (; 523 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u16,i32>#next
  return
 )
 (func $~lib/map/KeyIterator<u16,i32>#get:done (; 524 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u16,i32>#get:done
 )
 (func $~lib/iterator/IteratorResult<u16>#get:done (; 525 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u16,i32>#get:done
  return
 )
 (func $~lib/map/KeyIterator<u16,i32>#get:value (; 526 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<u16,i32>#get:value
  i32.load16_u
 )
 (func $~lib/iterator/IteratorResult<u16>#get:value (; 527 ;) (param $0 i32) (result i32)
  block $switch$1$case$3
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default
   end
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<u16,i32>#get:value
  return
 )
)
