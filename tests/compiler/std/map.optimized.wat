(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_f32_=>_i32 (func (param i32 f32) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_f64_i32_=>_i32 (func (param i32 f64 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i32_f32_=>_none (func (param i32 i32 f32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i32_i64_i64_=>_none (func (param i32 i64 i64)))
 (type $i32_f32_=>_none (func (param i32 f32)))
 (type $i32_f32_i32_=>_none (func (param i32 f32 i32)))
 (type $i32_f32_f32_=>_none (func (param i32 f32 f32)))
 (type $i32_f64_=>_none (func (param i32 f64)))
 (type $i32_f64_i32_=>_none (func (param i32 f64 i32)))
 (type $i32_f64_f64_=>_none (func (param i32 f64 f64)))
 (type $i32_f32_i32_=>_i32 (func (param i32 f32 i32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (memory $0 1)
 (data (i32.const 16) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 64) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 128) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 176) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 224) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 288) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 352) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 400) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00s\00t\00d\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 448) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 512) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 560) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 608) "\8c\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\98\04\t\00\00\00\00\00\10\00\00\00\05\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\04\00\00\02\00\00\00\10\00\00\00\07\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\98\04\01\00\00\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\00\00\00\02\00\00\00\10\00\00\00\12\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\98\00\01\00\00\00\00\00\10\00\00\00\1b\00\00\00\10\00\00\00\00\00\00\00\98\04\n\00\00\00\00\00\10\00\00\00\1e\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\13\05\00\00\02\00\00\00\10\00\00\00 \00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\18\05\n\00\00\00\00\00\10\00\00\00)\00\00\00\10\00\00\00\00\00\00\00\98\04\02\00\00\00\00\00\10\00\00\00,\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\13\01\00\00\02\00\00\00\10\00\00\00.\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\18\01\02\00\00\00\00\00\10\00\00\007\00\00\00\10\00\00\00\00\00\00\00\98\04\19\00\00\00\00\00\10\00\00\00:\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\0c\00\00\02\00\00\00\10\00\00\00<\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\98\0c\19\00\00\00\00\00\10\00\00\00E\00\00\00\10\00\00\00\00\00\00\00\98\04\1a\00\00\00\00\00\10\00\00\00H\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\13\0d\00\00\02\00\00\00\10\00\00\00J\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\18\0d\1a\00\00\00\00\00\10\00\00\00S\00\00\00\10\00\00\00\00\00\00\00\98D\08\00\00\00\00\00\10\00\00\00V\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\003\04\00\00\02\00\00\00\10\00\00\00X\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\008D\08\00\00\00\00\00\10\00\00\00a\00\00\00\10\00\00\00\00\00\00\00\98D\00\00\00\00\00\00\10\00\00\00d\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\003\00\00\00\02\00\00\00\10\00\00\00f\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\008@\00\00\00\00\00\00\10\00\00\00o\00\00\00\10\00\00\00\00\00\00\00\98\84\08\00\00\00\00\00\10\00\00\00r\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00S\04\00\00\02\00\00\00\10\00\00\00t\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00X\84\08\00\00\00\00\00\10\00\00\00}\00\00\00\10\00\00\00\00\00\00\00\98\84\00\00\00\00\00\00\10\00\00\00\80\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00S\00\00\00\02\00\00\00\10\00\00\00\82\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00X\80\00\00\00\00\00\00\10\00\00\00\8b\00\00\00\10")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/rt/tlsf/removeBlock (; 5 ;) (param $0 i32) (param $1 i32)
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
   i32.const 32
   i32.const 277
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
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
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
   i32.const 0
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
  end
  local.tee $3
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $2
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
  i32.load offset=20
  local.set $4
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=20
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=16
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
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.const 1
    local.get $2
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $3
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
  local.tee $3
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
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $5
  i32.const 1
  i32.and
  if
   local.get $3
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    local.get $3
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $1
    i32.const 16
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $4
    i32.load
    local.set $5
   end
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $2
   i32.load
   local.tee $6
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
   local.get $6
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $7
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $7
    local.get $6
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $2
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
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
  local.get $2
  local.get $1
  i32.const 16
  i32.add
  i32.add
  local.get $4
  i32.ne
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
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $4
   i32.const 0
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $4
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $3
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $4
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
  local.get $4
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $2
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $2
  i32.store offset=20
  local.get $2
  if
   local.get $2
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $4
  local.get $3
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
  local.get $3
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $4
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 7 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  local.get $2
  i32.le_u
  select
  select
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
  i32.load offset=1568
  local.tee $3
  if
   local.get $1
   local.get $3
   i32.const 16
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 32
    i32.const 396
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $3
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
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $2
  i32.add
  i32.const 16
  i32.sub
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
 (func $~lib/rt/tlsf/maybeInitialize (; 8 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $2
  i32.eqz
  if
   i32.const 1
   memory.size
   local.tee $0
   i32.gt_s
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
   i32.const 1744
   local.set $2
   i32.const 1744
   i32.const 0
   i32.store
   i32.const 3312
   i32.const 0
   i32.store
   i32.const 0
   local.set $0
   loop $loop|0
    local.get $0
    i32.const 23
    i32.lt_u
    if
     local.get $0
     i32.const 2
     i32.shl
     i32.const 1744
     i32.add
     i32.const 0
     i32.store offset=4
     i32.const 0
     local.set $1
     loop $loop|1
      local.get $1
      i32.const 16
      i32.lt_u
      if
       local.get $1
       local.get $0
       i32.const 4
       i32.shl
       i32.add
       i32.const 2
       i32.shl
       i32.const 1744
       i32.add
       i32.const 0
       i32.store offset=96
       local.get $1
       i32.const 1
       i32.add
       local.set $1
       br $loop|1
      end
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
   end
   i32.const 1744
   i32.const 3328
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 1744
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $2
 )
 (func $~lib/rt/tlsf/prepareSize (; 9 ;) (param $0 i32) (result i32)
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
  i32.const -16
  i32.and
  local.tee $0
  i32.const 16
  local.get $0
  i32.const 16
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 10 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
   i32.const 0
  else
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
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $1
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
     i32.const 32
     i32.const 351
     i32.const 17
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
 (func $~lib/rt/pure/markGray (; 11 ;) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const -1879048193
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
  local.tee $2
  i32.const 1
  i32.and
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
  i32.const -1879048193
  i32.and
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
  local.tee $1
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
    i32.const -1879048193
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
  local.tee $1
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
   i32.const -1879048193
   i32.and
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
  local.tee $5
  local.tee $2
  local.set $3
  global.get $~lib/rt/pure/CUR
  local.set $0
  loop $loop|0
   local.get $3
   local.get $0
   i32.lt_u
   if
    local.get $3
    i32.load
    local.tee $4
    i32.load offset=4
    local.tee $1
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $1
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
     local.get $2
     local.get $4
     i32.store
     local.get $2
     i32.const 4
     i32.add
     local.set $2
    else
     i32.const 0
     local.get $1
     i32.const 268435455
     i32.and
     i32.eqz
     local.get $1
     i32.const 1879048192
     i32.and
     select
     if
      global.get $~lib/rt/tlsf/ROOT
      local.get $4
      call $~lib/rt/tlsf/freeBlock
     else
      local.get $4
      local.get $1
      i32.const 2147483647
      i32.and
      i32.store offset=4
     end
    end
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $loop|0
   end
  end
  local.get $2
  global.set $~lib/rt/pure/CUR
  local.get $5
  local.set $0
  loop $loop|1
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    i32.load
    call $~lib/rt/pure/scan
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $loop|1
   end
  end
  local.get $5
  local.set $0
  loop $loop|2
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    i32.load
    local.tee $1
    local.get $1
    i32.load offset=4
    i32.const 2147483647
    i32.and
    i32.store offset=4
    local.get $1
    call $~lib/rt/pure/collectWhite
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $loop|2
   end
  end
  local.get $5
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/tlsf/growMemory (; 17 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  memory.size
  local.tee $2
  i32.const 16
  local.get $0
  i32.load offset=1568
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.sub
  i32.ne
  i32.shl
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
  local.get $1
  local.get $1
  i32.const 536870904
  i32.lt_u
  select
  i32.add
  i32.const 65535
  i32.add
  i32.const -65536
  i32.and
  i32.const 16
  i32.shr_u
  local.tee $1
  local.get $2
  local.get $1
  i32.gt_s
  select
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $1
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
 )
 (func $~lib/rt/tlsf/prepareBlock (; 18 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 32
   i32.const 365
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
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
   local.get $2
   local.get $1
   i32.const 16
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $1
   i32.const 16
   i32.add
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
 )
 (func $~lib/rt/tlsf/allocateBlock (; 19 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/tlsf/collectLock
  if
   i32.const 0
   i32.const 32
   i32.const 490
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   i32.const 1
   global.set $~lib/rt/tlsf/collectLock
   call $~lib/rt/pure/__collect
   i32.const 0
   global.set $~lib/rt/tlsf/collectLock
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/growMemory
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.tee $2
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
  end
  local.get $2
  i32.load
  i32.const -4
  i32.and
  local.get $3
  i32.lt_u
  if
   i32.const 0
   i32.const 32
   i32.const 510
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $2
  local.get $3
  call $~lib/rt/tlsf/prepareBlock
  local.get $2
  call $~lib/rt/rtrace/onalloc
  local.get $2
 )
 (func $~lib/rt/tlsf/__alloc (; 20 ;) (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  local.tee $0
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/increment (; 21 ;) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.ne
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
  i32.const 1732
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/memory/memory.fill (; 23 ;) (param $0 i32) (param $1 i32)
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
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 1
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   i32.const 2
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 3
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $1
   i32.sub
   local.set $2
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $2
   i32.const -4
   i32.and
   local.tee $1
   i32.add
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 4
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 8
   i32.add
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 12
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 16
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 20
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 24
   i32.add
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
   i32.add
   local.set $0
   local.get $1
   local.get $2
   i32.sub
   local.set $1
   loop $continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i32.const 8
     i32.add
     i64.const 0
     i64.store
     local.get $0
     i32.const 16
     i32.add
     i64.const 0
     i64.store
     local.get $0
     i32.const 24
     i32.add
     i64.const 0
     i64.store
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 24 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
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
  local.get $0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $~lib/rt/__typeinfo (; 25 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 608
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
  local.get $0
  i32.const 3
  i32.shl
  i32.const 612
  i32.add
  i32.load
 )
 (func $~lib/memory/memory.copy (; 26 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $3
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
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $continue|1
      end
     end
    end
    loop $continue|2
     local.get $3
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $4
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
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
     loop $continue|3
      local.get $0
      local.get $3
      i32.add
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       local.get $0
       i32.add
       local.get $1
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      if
       local.get $3
       i32.const 8
       i32.sub
       local.tee $3
       local.get $0
       i32.add
       local.get $1
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $3
     if
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      local.get $0
      i32.add
      local.get $1
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/tlsf/__free (; 27 ;) (param $0 i32)
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
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
 (func $~lib/rt/pure/growRoots (; 28 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/pure/CUR
  global.get $~lib/rt/pure/ROOTS
  local.tee $1
  i32.sub
  local.tee $2
  i32.const 1
  i32.shl
  local.tee $0
  i32.const 256
  local.get $0
  i32.const 256
  i32.gt_u
  select
  local.tee $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  i32.const 16
  i32.sub
  call $~lib/rt/rtrace/onfree
  local.get $0
  local.get $1
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  if
   local.get $1
   i32.const 16
   i32.sub
   call $~lib/rt/rtrace/onalloc
   local.get $1
   call $~lib/rt/tlsf/__free
  end
  local.get $0
  global.set $~lib/rt/pure/ROOTS
  local.get $0
  local.get $2
  i32.add
  global.set $~lib/rt/pure/CUR
  local.get $0
  local.get $3
  i32.add
  global.set $~lib/rt/pure/END
 )
 (func $~lib/rt/pure/appendRoot (; 29 ;) (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.tee $1
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
 (func $~lib/rt/pure/decrement (; 30 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 268435455
  i32.and
  local.set $1
  local.get $0
  call $~lib/rt/rtrace/ondecrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 144
   i32.const 115
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   local.get $2
   i32.const -2147483648
   i32.and
   if
    local.get $0
    i32.const -2147483648
    i32.store offset=4
   else
    global.get $~lib/rt/tlsf/ROOT
    local.get $0
    call $~lib/rt/tlsf/freeBlock
   end
  else
   local.get $1
   i32.const 0
   i32.le_u
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
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $2
    i32.const -268435456
    i32.and
    i32.or
    i32.store offset=4
   else
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    i32.const -1342177280
    i32.or
    i32.store offset=4
    local.get $2
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/pure/appendRoot
    end
   end
  end
 )
 (func $~lib/rt/pure/__release (; 31 ;) (param $0 i32)
  local.get $0
  i32.const 1732
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/map/Map<i32,i32>#clear (; 32 ;) (param $0 i32)
  (local $1 i32)
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $0
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
 (func $~lib/map/Map<i32,i32>#constructor (; 33 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/util/hash/hash32 (; 34 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/map/Map<i32,i32>#find (; 35 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     i32.load
     i32.eq
    end
    if
     local.get $0
     return
    else
     local.get $0
     i32.load offset=8
     i32.const -2
     i32.and
     local.set $0
     br $continue|0
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i32,i32>#has (; 36 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash32
  call $~lib/map/Map<i32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i32,i32>#rehash (; 37 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load
     i32.store
     local.get $3
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $5
     local.get $2
     i32.load
     call $~lib/util/hash/hash32
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=8
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i32,i32>#set (; 38 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash32
  local.tee $4
  call $~lib/map/Map<i32,i32>#find
  local.tee $3
  if
   local.get $3
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
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<i32,i32>#get (; 39 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash32
  call $~lib/map/Map<i32,i32>#find
  local.tee $0
  i32.eqz
  if
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $~lib/map/Map<i32,i32>#entries (; 40 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 41 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 1073741808
  local.get $1
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
  i32.const 0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  i32.const 0
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
  local.get $1
  local.set $2
  local.get $0
  i32.load
  local.tee $3
  local.get $1
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 42 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $1
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  if (result i32)
   i32.const 0
  else
   local.get $1
   i32.load offset=4
   i32.const -268435456
   i32.and
   i32.eqz
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
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $6
  i32.load
  local.tee $5
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const -4
   i32.and
   i32.add
   local.tee $5
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $5
    local.get $4
    i32.const 3
    i32.and
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
  local.tee $3
  local.get $1
  i32.load offset=8
  i32.store offset=8
  local.get $3
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 1732
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
  local.get $3
 )
 (func $~lib/rt/tlsf/__realloc (; 43 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
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
 (func $~lib/array/ensureSize (; 44 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $3
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
   local.get $3
   local.get $0
   i32.load
   local.tee $4
   local.get $1
   local.get $2
   i32.shl
   local.tee $2
   call $~lib/rt/tlsf/__realloc
   local.tee $1
   i32.add
   local.get $2
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $1
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $1
    call $~lib/rt/pure/__retain
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
   end
   local.get $0
   local.get $2
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<i32>#__set (; 45 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
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
   local.tee $3
   i32.const 2
   call $~lib/array/ensureSize
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<i32>#set:length (; 46 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=12
  drop
  local.get $0
  local.get $1
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array.from<i32,i32> (; 47 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $1
  i32.const 0
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $1
  local.set $3
  local.get $0
  call $~lib/iterator/Iterable<i32>#get:iterator
  local.tee $4
  local.set $5
  local.get $4
  call $~lib/iterator/Iterator<i32>#next
  local.set $2
  i32.const 0
  local.set $0
  loop $continue|0
   local.get $2
   call $~lib/iterator/IteratorResult<i32>#get:done
   i32.eqz
   if
    local.get $0
    local.tee $1
    i32.const 1
    i32.add
    local.set $0
    local.get $3
    local.get $1
    local.get $2
    call $~lib/iterator/IteratorResult<i32>#get:value
    call $~lib/array/Array<i32>#__set
    local.get $5
    call $~lib/iterator/Iterator<i32>#next
    local.get $2
    call $~lib/rt/pure/__release
    local.set $2
    br $continue|0
   end
  end
  local.get $3
  local.get $0
  call $~lib/array/Array<i32>#set:length
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#__get (; 48 ;) (param $0 i32) (param $1 i32) (result i32)
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
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/map/Map<i32,i32>#delete (; 49 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash32
  call $~lib/map/Map<i32,i32>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
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
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
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
   local.get $2
   call $~lib/map/Map<i32,i32>#rehash
  end
 )
 (func $std/map/testNumeric<i32,i32> (; 50 ;)
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
  call $~lib/map/Map<i32,i32>#constructor
  local.set $1
  loop $loop|0
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 10
    i32.add
    call $~lib/map/Map<i32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 9
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 11
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 20
    i32.add
    call $~lib/map/Map<i32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 19
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<i32,i32>#entries
  local.set $3
  i32.const 4
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $8
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/array/Array.from<i32,i32>
  local.set $4
  local.get $1
  call $~lib/map/Map<i32,i32>#entries
  local.set $2
  i32.const 4
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $3
  local.get $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/array/Array.from<i32,i32>
  local.set $9
  call $~lib/map/Map<i32,i32>#constructor
  local.set $5
  call $~lib/map/Map<i32,i32>#constructor
  local.set $6
  i32.const 0
  local.set $0
  loop $loop|2
   local.get $0
   local.get $4
   i32.load offset=12
   i32.lt_s
   if
    local.get $4
    local.get $0
    call $~lib/array/Array<i32>#__get
    local.set $7
    local.get $9
    local.get $0
    call $~lib/array/Array<i32>#__get
    local.set $2
    local.get $1
    local.get $7
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
    local.get $1
    local.get $2
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#has
    if
     local.get $5
     local.get $7
     local.get $7
     call $~lib/map/Map<i32,i32>#set
     local.get $6
     local.get $2
     i32.const 20
     i32.sub
     local.tee $2
     local.get $2
     call $~lib/map/Map<i32,i32>#set
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|2
    else
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
  end
  local.get $5
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|3
   local.get $0
   i32.const 50
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|3
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|4
   local.get $0
   i32.const 50
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 10
    i32.add
    call $~lib/map/Map<i32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|4
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 56
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<i32,i32>#clear
  local.get $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 416
   i32.const 60
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u32,i32>#constructor (; 51 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 14
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/map/Map<u32,i32>#entries (; 52 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 12
  i32.const 22
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array.from<u32,u32> (; 53 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  i32.const 19
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 21
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  local.get $4
  call $~lib/iterator/Iterator<u32>#next
  local.set $3
  i32.const 0
  local.set $0
  loop $continue|0
   local.get $3
   local.tee $1
   i32.const 8
   i32.sub
   i32.load
   i32.const 21
   i32.sub
   if
    unreachable
   end
   local.get $1
   call $~lib/map/KeyIterator<i32,i32>#get:done
   i32.eqz
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.sub
    i32.load
    i32.const 21
    i32.sub
    if
     unreachable
    end
    local.get $2
    local.get $3
    local.get $1
    call $~lib/map/KeyIterator<i32,i32>#get:value
    call $~lib/array/Array<i32>#__set
    local.get $4
    call $~lib/iterator/Iterator<u32>#next
    local.set $3
    local.get $1
    call $~lib/rt/pure/__release
    br $continue|0
   end
  end
  local.get $2
  local.get $0
  call $~lib/array/Array<i32>#set:length
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<u32,u32>#constructor (; 54 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 25
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $std/map/testNumeric<u32,i32> (; 55 ;)
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
  call $~lib/map/Map<u32,i32>#constructor
  local.set $1
  loop $loop|0
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 10
    i32.add
    call $~lib/map/Map<i32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 9
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 11
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 20
    i32.add
    call $~lib/map/Map<i32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 19
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<u32,i32>#entries
  local.set $3
  i32.const 4
  i32.const 21
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $8
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/array/Array.from<u32,u32>
  local.set $4
  local.get $1
  call $~lib/map/Map<u32,i32>#entries
  local.set $2
  i32.const 4
  i32.const 24
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $3
  local.get $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/array/Array.from<i32,i32>
  local.set $9
  call $~lib/map/Map<u32,u32>#constructor
  local.set $5
  call $~lib/map/Map<i32,i32>#constructor
  local.set $6
  i32.const 0
  local.set $0
  loop $loop|2
   local.get $0
   local.get $4
   i32.load offset=12
   i32.lt_s
   if
    local.get $4
    local.get $0
    call $~lib/array/Array<i32>#__get
    local.set $7
    local.get $9
    local.get $0
    call $~lib/array/Array<i32>#__get
    local.set $2
    local.get $1
    local.get $7
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
    local.get $1
    local.get $2
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#has
    if
     local.get $5
     local.get $7
     local.get $7
     call $~lib/map/Map<i32,i32>#set
     local.get $6
     local.get $2
     i32.const 20
     i32.sub
     local.tee $2
     local.get $2
     call $~lib/map/Map<i32,i32>#set
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|2
    else
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
  end
  local.get $5
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|3
   local.get $0
   i32.const 50
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|3
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|4
   local.get $0
   i32.const 50
   i32.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 10
    i32.add
    call $~lib/map/Map<i32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|4
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 56
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<i32,i32>#clear
  local.get $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 416
   i32.const 60
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i64,i32>#clear (; 56 ;) (param $0 i32)
  (local $1 i32)
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $0
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
 (func $~lib/map/Map<i64,i32>#constructor (; 57 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 28
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/util/hash/hash64 (; 58 ;) (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.tee $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $1
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/map/Map<i64,i32>#find (; 59 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=12
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     i64.load
     i64.eq
    end
    if
     local.get $0
     return
    else
     local.get $0
     i32.load offset=12
     i32.const -2
     i32.and
     local.set $0
     br $continue|0
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i64,i32>#has (; 60 ;) (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash64
  call $~lib/map/Map<i64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i64,i32>#rehash (; 61 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 4
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 4
  i32.shl
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i64.load
     i64.store
     local.get $3
     local.get $2
     i32.load offset=8
     i32.store offset=8
     local.get $3
     local.get $5
     local.get $2
     i64.load
     call $~lib/util/hash/hash64
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=12
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 16
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 16
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i64,i32>#set (; 62 ;) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash64
  local.tee $4
  call $~lib/map/Map<i64,i32>#find
  local.tee $3
  if
   local.get $3
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
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 4
   i32.shl
   i32.add
   local.tee $3
   local.get $1
   i64.store
   local.get $3
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=12
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<i64,i32>#get (; 63 ;) (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash64
  call $~lib/map/Map<i64,i32>#find
  local.tee $0
  i32.eqz
  if
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=8
 )
 (func $~lib/map/Map<i64,i32>#entries (; 64 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 12
  i32.const 36
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array<i64>#__set (; 65 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
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
   local.tee $3
   i32.const 3
   call $~lib/array/ensureSize
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $~lib/array/Array<i64>#set:length (; 66 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=12
  drop
  local.get $0
  local.get $1
  i32.const 3
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array.from<i64,i64> (; 67 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  i32.const 33
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 35
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  local.get $4
  call $~lib/iterator/Iterator<i64>#next
  local.set $3
  i32.const 0
  local.set $0
  loop $continue|0
   local.get $3
   local.tee $1
   i32.const 8
   i32.sub
   i32.load
   i32.const 35
   i32.sub
   if
    unreachable
   end
   local.get $1
   call $~lib/map/KeyIterator<i32,i32>#get:done
   i32.eqz
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.sub
    i32.load
    i32.const 35
    i32.sub
    if
     unreachable
    end
    local.get $2
    local.get $3
    local.get $1
    call $~lib/map/KeyIterator<i64,i32>#get:value
    call $~lib/array/Array<i64>#__set
    local.get $4
    call $~lib/iterator/Iterator<i64>#next
    local.set $3
    local.get $1
    call $~lib/rt/pure/__release
    br $continue|0
   end
  end
  local.get $2
  local.get $0
  call $~lib/array/Array<i64>#set:length
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<i64,i64>#clear (; 68 ;) (param $0 i32)
  (local $1 i32)
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  i32.const 96
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $0
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
 (func $~lib/map/Map<i64,i64>#constructor (; 69 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 39
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array<i64>#__get (; 70 ;) (param $0 i32) (param $1 i32) (result i64)
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
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/map/Map<i64,i64>#find (; 71 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=16
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     i64.load
     i64.eq
    end
    if
     local.get $0
     return
    else
     local.get $0
     i32.load offset=16
     i32.const -2
     i32.and
     local.set $0
     br $continue|0
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i64,i64>#rehash (; 72 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 24
  i32.mul
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=16
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i64.load
     i64.store
     local.get $3
     local.get $2
     i64.load offset=8
     i64.store offset=8
     local.get $3
     local.get $5
     local.get $2
     i64.load
     call $~lib/util/hash/hash64
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=16
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 24
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 24
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i64,i64>#set (; 73 ;) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash64
  local.tee $4
  call $~lib/map/Map<i64,i64>#find
  local.tee $3
  if
   local.get $3
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
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 24
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i64.store
   local.get $3
   local.get $2
   i64.store offset=8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=16
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<i64,i32>#delete (; 74 ;) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash64
  call $~lib/map/Map<i64,i32>#find
  local.tee $2
  i32.eqz
  if
   return
  end
  local.get $2
  local.get $2
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
  local.tee $3
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.const 4
  local.get $2
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
   local.get $3
   call $~lib/map/Map<i64,i32>#rehash
  end
 )
 (func $std/map/testNumeric<i64,i32> (; 75 ;)
  (local $0 i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  call $~lib/map/Map<i64,i32>#constructor
  local.set $1
  loop $loop|0
   local.get $0
   i64.const 100
   i64.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.wrap_i64
    i32.const 10
    i32.add
    call $~lib/map/Map<i64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 9
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 11
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $0
  loop $loop|1
   local.get $0
   i64.const 100
   i64.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.wrap_i64
    i32.const 20
    i32.add
    call $~lib/map/Map<i64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 19
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<i64,i32>#entries
  local.set $3
  i32.const 4
  i32.const 35
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $8
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/array/Array.from<i64,i64>
  local.set $5
  local.get $1
  call $~lib/map/Map<i64,i32>#entries
  local.set $2
  i32.const 4
  i32.const 38
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $3
  local.get $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/array/Array.from<i32,i32>
  local.set $9
  call $~lib/map/Map<i64,i64>#constructor
  local.set $6
  call $~lib/map/Map<i32,i32>#constructor
  local.set $7
  loop $loop|2
   local.get $4
   local.get $5
   i32.load offset=12
   i32.lt_s
   if
    local.get $5
    local.get $4
    call $~lib/array/Array<i64>#__get
    local.set $0
    local.get $9
    local.get $4
    call $~lib/array/Array<i32>#__get
    local.set $2
    local.get $1
    local.get $0
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
    local.get $1
    local.get $2
    i32.const 20
    i32.sub
    i64.extend_i32_s
    call $~lib/map/Map<i64,i32>#has
    if
     local.get $6
     local.get $0
     local.get $0
     call $~lib/map/Map<i64,i64>#set
     local.get $7
     local.get $2
     i32.const 20
     i32.sub
     local.tee $2
     local.get $2
     call $~lib/map/Map<i32,i32>#set
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $loop|2
    else
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
  end
  local.get $6
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $0
  loop $loop|3
   local.get $0
   i64.const 50
   i64.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $loop|3
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $0
  loop $loop|4
   local.get $0
   i64.const 50
   i64.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.wrap_i64
    i32.const 10
    i32.add
    call $~lib/map/Map<i64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $loop|4
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 56
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<i64,i32>#clear
  local.get $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 416
   i32.const 60
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u64,i32>#constructor (; 76 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 42
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/map/Map<u64,i32>#entries (; 77 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 12
  i32.const 50
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array.from<u64,u64> (; 78 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  i32.const 47
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 49
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  local.get $4
  call $~lib/iterator/Iterator<u64>#next
  local.set $3
  i32.const 0
  local.set $0
  loop $continue|0
   local.get $3
   local.tee $1
   i32.const 8
   i32.sub
   i32.load
   i32.const 49
   i32.sub
   if
    unreachable
   end
   local.get $1
   call $~lib/map/KeyIterator<i32,i32>#get:done
   i32.eqz
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.sub
    i32.load
    i32.const 49
    i32.sub
    if
     unreachable
    end
    local.get $2
    local.get $3
    local.get $1
    call $~lib/map/KeyIterator<i64,i32>#get:value
    call $~lib/array/Array<i64>#__set
    local.get $4
    call $~lib/iterator/Iterator<u64>#next
    local.set $3
    local.get $1
    call $~lib/rt/pure/__release
    br $continue|0
   end
  end
  local.get $2
  local.get $0
  call $~lib/array/Array<i64>#set:length
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<u64,u64>#constructor (; 79 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 53
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $std/map/testNumeric<u64,i32> (; 80 ;)
  (local $0 i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  call $~lib/map/Map<u64,i32>#constructor
  local.set $1
  loop $loop|0
   local.get $0
   i64.const 100
   i64.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.wrap_i64
    i32.const 10
    i32.add
    call $~lib/map/Map<i64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 9
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 11
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $0
  loop $loop|1
   local.get $0
   i64.const 100
   i64.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.wrap_i64
    i32.const 20
    i32.add
    call $~lib/map/Map<i64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 19
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<u64,i32>#entries
  local.set $3
  i32.const 4
  i32.const 49
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $8
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/array/Array.from<u64,u64>
  local.set $5
  local.get $1
  call $~lib/map/Map<u64,i32>#entries
  local.set $2
  i32.const 4
  i32.const 52
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $3
  local.get $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/array/Array.from<i32,i32>
  local.set $9
  call $~lib/map/Map<u64,u64>#constructor
  local.set $6
  call $~lib/map/Map<i32,i32>#constructor
  local.set $7
  loop $loop|2
   local.get $4
   local.get $5
   i32.load offset=12
   i32.lt_s
   if
    local.get $5
    local.get $4
    call $~lib/array/Array<i64>#__get
    local.set $0
    local.get $9
    local.get $4
    call $~lib/array/Array<i32>#__get
    local.set $2
    local.get $1
    local.get $0
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
    local.get $1
    local.get $2
    i32.const 20
    i32.sub
    i64.extend_i32_s
    call $~lib/map/Map<i64,i32>#has
    if
     local.get $6
     local.get $0
     local.get $0
     call $~lib/map/Map<i64,i64>#set
     local.get $7
     local.get $2
     i32.const 20
     i32.sub
     local.tee $2
     local.get $2
     call $~lib/map/Map<i32,i32>#set
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $loop|2
    else
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
  end
  local.get $6
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $0
  loop $loop|3
   local.get $0
   i64.const 50
   i64.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $loop|3
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $0
  loop $loop|4
   local.get $0
   i64.const 50
   i64.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.wrap_i64
    i32.const 10
    i32.add
    call $~lib/map/Map<i64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $loop|4
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 56
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<i64,i32>#clear
  local.get $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 416
   i32.const 60
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<f32,i32>#constructor (; 81 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 56
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/map/Map<f32,i32>#find (; 82 ;) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     f32.load
     local.get $1
     f32.eq
    end
    if
     local.get $0
     return
    else
     local.get $0
     i32.load offset=8
     i32.const -2
     i32.and
     local.set $0
     br $continue|0
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<f32,i32>#has (; 83 ;) (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  call $~lib/util/hash/hash32
  call $~lib/map/Map<f32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<f32,i32>#rehash (; 84 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     f32.load
     f32.store
     local.get $3
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $5
     local.get $2
     f32.load
     i32.reinterpret_f32
     call $~lib/util/hash/hash32
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=8
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<f32,i32>#set (; 85 ;) (param $0 i32) (param $1 f32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  call $~lib/util/hash/hash32
  local.tee $4
  call $~lib/map/Map<f32,i32>#find
  local.tee $3
  if
   local.get $3
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
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   f32.store
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<f32,i32>#get (; 86 ;) (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  call $~lib/util/hash/hash32
  call $~lib/map/Map<f32,i32>#find
  local.tee $0
  i32.eqz
  if
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $~lib/map/Map<f32,i32>#entries (; 87 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 12
  i32.const 64
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array<f32>#__set (; 88 ;) (param $0 i32) (param $1 i32) (param $2 f32)
  (local $3 i32)
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
   local.tee $3
   i32.const 2
   call $~lib/array/ensureSize
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  f32.store
 )
 (func $~lib/array/Array.from<f32,f32> (; 89 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  i32.const 61
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 63
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  local.get $4
  call $~lib/iterator/Iterator<f32>#next
  local.set $3
  i32.const 0
  local.set $0
  loop $continue|0
   local.get $3
   local.tee $1
   i32.const 8
   i32.sub
   i32.load
   i32.const 63
   i32.sub
   if
    unreachable
   end
   local.get $1
   call $~lib/map/KeyIterator<i32,i32>#get:done
   i32.eqz
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.sub
    i32.load
    i32.const 63
    i32.sub
    if
     unreachable
    end
    local.get $2
    local.get $3
    local.get $1
    i32.load
    call $~lib/map/EntriesIter<i32,i32>#get:entry
    f32.load
    call $~lib/array/Array<f32>#__set
    local.get $4
    call $~lib/iterator/Iterator<f32>#next
    local.set $3
    local.get $1
    call $~lib/rt/pure/__release
    br $continue|0
   end
  end
  local.get $2
  local.get $0
  call $~lib/array/Array<i32>#set:length
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<f32,f32>#constructor (; 90 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 67
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array<f32>#__get (; 91 ;) (param $0 i32) (param $1 i32) (result f32)
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
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $~lib/map/Map<f32,f32>#rehash (; 92 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     f32.load
     f32.store
     local.get $3
     local.get $2
     f32.load offset=4
     f32.store offset=4
     local.get $3
     local.get $5
     local.get $2
     f32.load
     i32.reinterpret_f32
     call $~lib/util/hash/hash32
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=8
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<f32,f32>#set (; 93 ;) (param $0 i32) (param $1 f32) (param $2 f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  call $~lib/util/hash/hash32
  local.tee $4
  call $~lib/map/Map<f32,i32>#find
  local.tee $3
  if
   local.get $3
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
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   f32.store
   local.get $3
   local.get $2
   f32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<f32,i32>#delete (; 94 ;) (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  call $~lib/util/hash/hash32
  call $~lib/map/Map<f32,i32>#find
  local.tee $2
  i32.eqz
  if
   return
  end
  local.get $2
  local.get $2
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
  local.tee $3
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.const 4
  local.get $2
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
   local.get $3
   call $~lib/map/Map<f32,i32>#rehash
  end
 )
 (func $std/map/testNumeric<f32,i32> (; 95 ;)
  (local $0 f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  call $~lib/map/Map<f32,i32>#constructor
  local.set $1
  loop $loop|0
   local.get $0
   f32.const 100
   f32.lt
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.trunc_f32_s
    i32.const 10
    i32.add
    call $~lib/map/Map<f32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#get
    local.get $0
    i32.trunc_f32_s
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 9
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     f32.const 1
     f32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 11
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   f32.const 100
   f32.lt
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#get
    local.get $0
    i32.trunc_f32_s
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.trunc_f32_s
    i32.const 20
    i32.add
    call $~lib/map/Map<f32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#get
    local.get $0
    i32.trunc_f32_s
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 19
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     f32.const 1
     f32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<f32,i32>#entries
  local.set $3
  i32.const 4
  i32.const 63
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $8
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/array/Array.from<f32,f32>
  local.set $5
  local.get $1
  call $~lib/map/Map<f32,i32>#entries
  local.set $2
  i32.const 4
  i32.const 66
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $3
  local.get $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/array/Array.from<i32,i32>
  local.set $9
  call $~lib/map/Map<f32,f32>#constructor
  local.set $6
  call $~lib/map/Map<i32,i32>#constructor
  local.set $7
  loop $loop|2
   local.get $4
   local.get $5
   i32.load offset=12
   i32.lt_s
   if
    local.get $5
    local.get $4
    call $~lib/array/Array<f32>#__get
    local.set $0
    local.get $9
    local.get $4
    call $~lib/array/Array<i32>#__get
    local.set $2
    local.get $1
    local.get $0
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
    local.get $1
    local.get $2
    i32.const 20
    i32.sub
    f32.convert_i32_s
    call $~lib/map/Map<f32,i32>#has
    if
     local.get $6
     local.get $0
     local.get $0
     call $~lib/map/Map<f32,f32>#set
     local.get $7
     local.get $2
     i32.const 20
     i32.sub
     local.tee $2
     local.get $2
     call $~lib/map/Map<i32,i32>#set
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $loop|2
    else
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
  end
  local.get $6
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $0
  loop $loop|3
   local.get $0
   f32.const 50
   f32.lt
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#get
    local.get $0
    i32.trunc_f32_s
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     f32.const 1
     f32.add
     local.set $0
     br $loop|3
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $0
  loop $loop|4
   local.get $0
   f32.const 50
   f32.lt
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.trunc_f32_s
    i32.const 10
    i32.add
    call $~lib/map/Map<f32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     f32.const 1
     f32.add
     local.set $0
     br $loop|4
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 56
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<i32,i32>#clear
  local.get $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 416
   i32.const 60
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<f64,i32>#constructor (; 96 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 70
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/map/Map<f64,i32>#find (; 97 ;) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=12
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     f64.load
     local.get $1
     f64.eq
    end
    if
     local.get $0
     return
    else
     local.get $0
     i32.load offset=12
     i32.const -2
     i32.and
     local.set $0
     br $continue|0
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<f64,i32>#has (; 98 ;) (param $0 i32) (param $1 f64) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  call $~lib/util/hash/hash64
  call $~lib/map/Map<f64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<f64,i32>#rehash (; 99 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 4
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 4
  i32.shl
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     f64.load
     f64.store
     local.get $3
     local.get $2
     i32.load offset=8
     i32.store offset=8
     local.get $3
     local.get $5
     local.get $2
     f64.load
     i64.reinterpret_f64
     call $~lib/util/hash/hash64
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=12
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 16
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 16
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<f64,i32>#set (; 100 ;) (param $0 i32) (param $1 f64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  call $~lib/util/hash/hash64
  local.tee $4
  call $~lib/map/Map<f64,i32>#find
  local.tee $3
  if
   local.get $3
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
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 4
   i32.shl
   i32.add
   local.tee $3
   local.get $1
   f64.store
   local.get $3
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=12
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<f64,i32>#get (; 101 ;) (param $0 i32) (param $1 f64) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  call $~lib/util/hash/hash64
  call $~lib/map/Map<f64,i32>#find
  local.tee $0
  i32.eqz
  if
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=8
 )
 (func $~lib/map/Map<f64,i32>#entries (; 102 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 12
  i32.const 78
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array<f64>#__set (; 103 ;) (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
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
   local.tee $3
   i32.const 3
   call $~lib/array/ensureSize
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  f64.store
 )
 (func $~lib/array/Array.from<f64,f64> (; 104 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  i32.const 75
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 77
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  local.get $4
  call $~lib/iterator/Iterator<f64>#next
  local.set $3
  i32.const 0
  local.set $0
  loop $continue|0
   local.get $3
   local.tee $1
   i32.const 8
   i32.sub
   i32.load
   i32.const 77
   i32.sub
   if
    unreachable
   end
   local.get $1
   call $~lib/map/KeyIterator<i32,i32>#get:done
   i32.eqz
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.sub
    i32.load
    i32.const 77
    i32.sub
    if
     unreachable
    end
    local.get $2
    local.get $3
    local.get $1
    i32.load
    call $~lib/map/EntriesIter<i64,i32>#get:entry
    f64.load
    call $~lib/array/Array<f64>#__set
    local.get $4
    call $~lib/iterator/Iterator<f64>#next
    local.set $3
    local.get $1
    call $~lib/rt/pure/__release
    br $continue|0
   end
  end
  local.get $2
  local.get $0
  call $~lib/array/Array<i64>#set:length
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<f64,f64>#constructor (; 105 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 81
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array<f64>#__get (; 106 ;) (param $0 i32) (param $1 i32) (result f64)
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
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/map/Map<f64,f64>#find (; 107 ;) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=16
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     f64.load
     local.get $1
     f64.eq
    end
    if
     local.get $0
     return
    else
     local.get $0
     i32.load offset=16
     i32.const -2
     i32.and
     local.set $0
     br $continue|0
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<f64,f64>#rehash (; 108 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 24
  i32.mul
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=16
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     f64.load
     f64.store
     local.get $3
     local.get $2
     f64.load offset=8
     f64.store offset=8
     local.get $3
     local.get $5
     local.get $2
     f64.load
     i64.reinterpret_f64
     call $~lib/util/hash/hash64
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=16
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 24
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 24
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<f64,f64>#set (; 109 ;) (param $0 i32) (param $1 f64) (param $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  call $~lib/util/hash/hash64
  local.tee $4
  call $~lib/map/Map<f64,f64>#find
  local.tee $3
  if
   local.get $3
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
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 24
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   f64.store
   local.get $3
   local.get $2
   f64.store offset=8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=16
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<f64,i32>#delete (; 110 ;) (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  call $~lib/util/hash/hash64
  call $~lib/map/Map<f64,i32>#find
  local.tee $2
  i32.eqz
  if
   return
  end
  local.get $2
  local.get $2
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
  local.tee $3
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.const 4
  local.get $2
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
   local.get $3
   call $~lib/map/Map<f64,i32>#rehash
  end
 )
 (func $std/map/testNumeric<f64,i32> (; 111 ;)
  (local $0 f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  call $~lib/map/Map<f64,i32>#constructor
  local.set $1
  loop $loop|0
   local.get $0
   f64.const 100
   f64.lt
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.trunc_f64_s
    i32.const 10
    i32.add
    call $~lib/map/Map<f64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#get
    local.get $0
    i32.trunc_f64_s
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 9
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     f64.const 1
     f64.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 11
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $0
  loop $loop|1
   local.get $0
   f64.const 100
   f64.lt
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#get
    local.get $0
    i32.trunc_f64_s
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.trunc_f64_s
    i32.const 20
    i32.add
    call $~lib/map/Map<f64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#get
    local.get $0
    i32.trunc_f64_s
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 19
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     f64.const 1
     f64.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<f64,i32>#entries
  local.set $3
  i32.const 4
  i32.const 77
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $8
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/array/Array.from<f64,f64>
  local.set $5
  local.get $1
  call $~lib/map/Map<f64,i32>#entries
  local.set $2
  i32.const 4
  i32.const 80
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $3
  local.get $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/array/Array.from<i32,i32>
  local.set $9
  call $~lib/map/Map<f64,f64>#constructor
  local.set $6
  call $~lib/map/Map<i32,i32>#constructor
  local.set $7
  loop $loop|2
   local.get $4
   local.get $5
   i32.load offset=12
   i32.lt_s
   if
    local.get $5
    local.get $4
    call $~lib/array/Array<f64>#__get
    local.set $0
    local.get $9
    local.get $4
    call $~lib/array/Array<i32>#__get
    local.set $2
    local.get $1
    local.get $0
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
    local.get $1
    local.get $2
    i32.const 20
    i32.sub
    f64.convert_i32_s
    call $~lib/map/Map<f64,i32>#has
    if
     local.get $6
     local.get $0
     local.get $0
     call $~lib/map/Map<f64,f64>#set
     local.get $7
     local.get $2
     i32.const 20
     i32.sub
     local.tee $2
     local.get $2
     call $~lib/map/Map<i32,i32>#set
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $loop|2
    else
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
  end
  local.get $6
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $0
  loop $loop|3
   local.get $0
   f64.const 50
   f64.lt
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#get
    local.get $0
    i32.trunc_f64_s
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     f64.const 1
     f64.add
     local.set $0
     br $loop|3
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $0
  loop $loop|4
   local.get $0
   f64.const 50
   f64.lt
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.trunc_f64_s
    i32.const 10
    i32.add
    call $~lib/map/Map<f64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     f64.const 1
     f64.add
     local.set $0
     br $loop|4
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 56
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<i64,i32>#clear
  local.get $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 416
   i32.const 60
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i8,i32>#constructor (; 112 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 84
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/util/hash/hash8 (; 113 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/map/Map<i8,i32>#find (; 114 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load8_u
     local.get $1
     i32.const 255
     i32.and
     i32.eq
    end
    if
     local.get $0
     return
    else
     local.get $0
     i32.load offset=8
     i32.const -2
     i32.and
     local.set $0
     br $continue|0
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i8,i32>#has (; 115 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/util/hash/hash8
  call $~lib/map/Map<i8,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i8,i32>#rehash (; 116 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load8_s
     i32.store8
     local.get $3
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $5
     local.get $2
     i32.load8_s
     call $~lib/util/hash/hash8
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=8
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i8,i32>#set (; 117 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/util/hash/hash8
  local.tee $4
  call $~lib/map/Map<i8,i32>#find
  local.tee $3
  if
   local.get $3
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
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store8
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<i8,i32>#get (; 118 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/util/hash/hash8
  call $~lib/map/Map<i8,i32>#find
  local.tee $0
  i32.eqz
  if
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $~lib/map/Map<i8,i32>#entries (; 119 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 12
  i32.const 92
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array<i8>#__set (; 120 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
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
   local.tee $3
   i32.const 0
   call $~lib/array/ensureSize
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/array/Array<i8>#set:length (; 121 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=12
  drop
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array.from<i8,i8> (; 122 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  i32.const 89
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 91
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  local.get $4
  call $~lib/iterator/Iterator<i8>#next
  local.set $3
  i32.const 0
  local.set $0
  loop $continue|0
   local.get $3
   local.tee $1
   i32.const 8
   i32.sub
   i32.load
   i32.const 91
   i32.sub
   if
    unreachable
   end
   local.get $1
   call $~lib/map/KeyIterator<i32,i32>#get:done
   i32.eqz
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.sub
    i32.load
    i32.const 91
    i32.sub
    if
     unreachable
    end
    local.get $2
    local.get $3
    local.get $1
    i32.load
    call $~lib/map/EntriesIter<i32,i32>#get:entry
    i32.load8_s
    call $~lib/array/Array<i8>#__set
    local.get $4
    call $~lib/iterator/Iterator<i8>#next
    local.set $3
    local.get $1
    call $~lib/rt/pure/__release
    br $continue|0
   end
  end
  local.get $2
  local.get $0
  call $~lib/array/Array<i8>#set:length
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<i8,i8>#clear (; 123 ;) (param $0 i32)
  (local $1 i32)
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $0
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
 (func $~lib/map/Map<i8,i8>#constructor (; 124 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 95
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array<i8>#__get (; 125 ;) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_s
 )
 (func $~lib/map/Map<i8,i8>#find (; 126 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load8_u
     local.get $1
     i32.const 255
     i32.and
     i32.eq
    end
    if
     local.get $0
     return
    else
     local.get $0
     i32.load offset=4
     i32.const -2
     i32.and
     local.set $0
     br $continue|0
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i8,i8>#rehash (; 127 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load8_s
     i32.store8
     local.get $3
     local.get $2
     i32.load8_s offset=1
     i32.store8 offset=1
     local.get $3
     local.get $5
     local.get $2
     i32.load8_s
     call $~lib/util/hash/hash8
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=4
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 8
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 8
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i8,i8>#set (; 128 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/util/hash/hash8
  local.tee $4
  call $~lib/map/Map<i8,i8>#find
  local.tee $3
  if
   local.get $3
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
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 3
   i32.shl
   i32.add
   local.tee $3
   local.get $1
   i32.store8
   local.get $3
   local.get $2
   i32.store8 offset=1
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=4
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<i8,i32>#delete (; 129 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/util/hash/hash8
  call $~lib/map/Map<i8,i32>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
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
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
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
   local.get $2
   call $~lib/map/Map<i8,i32>#rehash
  end
 )
 (func $std/map/testNumeric<i8,i32> (; 130 ;)
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
  call $~lib/map/Map<i8,i32>#constructor
  local.set $1
  loop $loop|0
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 10
    i32.add
    call $~lib/map/Map<i8,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#get
    local.get $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 9
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 11
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#get
    local.get $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 20
    i32.add
    call $~lib/map/Map<i8,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#get
    local.get $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 19
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<i8,i32>#entries
  local.set $3
  i32.const 4
  i32.const 91
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $8
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/array/Array.from<i8,i8>
  local.set $4
  local.get $1
  call $~lib/map/Map<i8,i32>#entries
  local.set $2
  i32.const 4
  i32.const 94
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $3
  local.get $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/array/Array.from<i32,i32>
  local.set $9
  call $~lib/map/Map<i8,i8>#constructor
  local.set $5
  call $~lib/map/Map<i32,i32>#constructor
  local.set $6
  i32.const 0
  local.set $0
  loop $loop|2
   local.get $0
   local.get $4
   i32.load offset=12
   i32.lt_s
   if
    local.get $4
    local.get $0
    call $~lib/array/Array<i8>#__get
    local.set $7
    local.get $9
    local.get $0
    call $~lib/array/Array<i32>#__get
    local.set $2
    local.get $1
    local.get $7
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
    local.get $1
    local.get $2
    i32.const 20
    i32.sub
    call $~lib/map/Map<i8,i32>#has
    if
     local.get $5
     local.get $7
     local.get $7
     call $~lib/map/Map<i8,i8>#set
     local.get $6
     local.get $2
     i32.const 20
     i32.sub
     local.tee $2
     local.get $2
     call $~lib/map/Map<i32,i32>#set
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|2
    else
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
  end
  local.get $5
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|3
   local.get $0
   i32.const 50
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#get
    local.get $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|3
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|4
   local.get $0
   i32.const 50
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 10
    i32.add
    call $~lib/map/Map<i8,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|4
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 56
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<i32,i32>#clear
  local.get $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 416
   i32.const 60
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u8,i32>#constructor (; 131 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 98
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/map/Map<u8,i32>#has (; 132 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 255
  i32.and
  call $~lib/util/hash/hash8
  call $~lib/map/Map<i8,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<u8,i32>#rehash (; 133 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load8_u
     i32.store8
     local.get $3
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $5
     local.get $2
     i32.load8_u
     call $~lib/util/hash/hash8
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=8
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u8,i32>#set (; 134 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 255
  i32.and
  call $~lib/util/hash/hash8
  local.tee $4
  call $~lib/map/Map<i8,i32>#find
  local.tee $3
  if
   local.get $3
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
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store8
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<u8,i32>#get (; 135 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 255
  i32.and
  call $~lib/util/hash/hash8
  call $~lib/map/Map<i8,i32>#find
  local.tee $0
  i32.eqz
  if
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $~lib/map/Map<u8,i32>#entries (; 136 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 12
  i32.const 106
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array.from<u8,u8> (; 137 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  i32.const 103
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 105
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  local.get $4
  call $~lib/iterator/Iterator<u8>#next
  local.set $3
  i32.const 0
  local.set $0
  loop $continue|0
   local.get $3
   local.tee $1
   i32.const 8
   i32.sub
   i32.load
   i32.const 105
   i32.sub
   if
    unreachable
   end
   local.get $1
   call $~lib/map/KeyIterator<i32,i32>#get:done
   i32.eqz
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.sub
    i32.load
    i32.const 105
    i32.sub
    if
     unreachable
    end
    local.get $2
    local.get $3
    local.get $1
    i32.load
    call $~lib/map/EntriesIter<i32,i32>#get:entry
    i32.load8_u
    call $~lib/array/Array<i8>#__set
    local.get $4
    call $~lib/iterator/Iterator<u8>#next
    local.set $3
    local.get $1
    call $~lib/rt/pure/__release
    br $continue|0
   end
  end
  local.get $2
  local.get $0
  call $~lib/array/Array<i8>#set:length
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<u8,u8>#constructor (; 138 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 109
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array<u8>#__get (; 139 ;) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $~lib/map/Map<u8,u8>#rehash (; 140 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load8_u
     i32.store8
     local.get $3
     local.get $2
     i32.load8_u offset=1
     i32.store8 offset=1
     local.get $3
     local.get $5
     local.get $2
     i32.load8_u
     call $~lib/util/hash/hash8
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=4
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 8
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 8
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u8,u8>#set (; 141 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 255
  i32.and
  call $~lib/util/hash/hash8
  local.tee $4
  call $~lib/map/Map<i8,i8>#find
  local.tee $3
  if
   local.get $3
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
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 3
   i32.shl
   i32.add
   local.tee $3
   local.get $1
   i32.store8
   local.get $3
   local.get $2
   i32.store8 offset=1
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=4
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<u8,i32>#delete (; 142 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 255
  i32.and
  call $~lib/util/hash/hash8
  call $~lib/map/Map<i8,i32>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
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
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
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
   local.get $2
   call $~lib/map/Map<u8,i32>#rehash
  end
 )
 (func $std/map/testNumeric<u8,i32> (; 143 ;)
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
  call $~lib/map/Map<u8,i32>#constructor
  local.set $1
  loop $loop|0
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 255
    i32.and
    i32.const 10
    i32.add
    call $~lib/map/Map<u8,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#get
    local.get $0
    i32.const 255
    i32.and
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 9
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 11
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#get
    local.get $0
    i32.const 255
    i32.and
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 255
    i32.and
    i32.const 20
    i32.add
    call $~lib/map/Map<u8,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#get
    local.get $0
    i32.const 255
    i32.and
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 19
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<u8,i32>#entries
  local.set $3
  i32.const 4
  i32.const 105
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $8
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/array/Array.from<u8,u8>
  local.set $4
  local.get $1
  call $~lib/map/Map<u8,i32>#entries
  local.set $2
  i32.const 4
  i32.const 108
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $3
  local.get $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/array/Array.from<i32,i32>
  local.set $9
  call $~lib/map/Map<u8,u8>#constructor
  local.set $5
  call $~lib/map/Map<i32,i32>#constructor
  local.set $6
  i32.const 0
  local.set $0
  loop $loop|2
   local.get $0
   local.get $4
   i32.load offset=12
   i32.lt_s
   if
    local.get $4
    local.get $0
    call $~lib/array/Array<u8>#__get
    local.set $7
    local.get $9
    local.get $0
    call $~lib/array/Array<i32>#__get
    local.set $2
    local.get $1
    local.get $7
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
    local.get $1
    local.get $2
    i32.const 20
    i32.sub
    call $~lib/map/Map<u8,i32>#has
    if
     local.get $5
     local.get $7
     local.get $7
     call $~lib/map/Map<u8,u8>#set
     local.get $6
     local.get $2
     i32.const 20
     i32.sub
     local.tee $2
     local.get $2
     call $~lib/map/Map<i32,i32>#set
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|2
    else
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
  end
  local.get $5
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|3
   local.get $0
   i32.const 50
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#get
    local.get $0
    i32.const 255
    i32.and
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|3
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|4
   local.get $0
   i32.const 50
   i32.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 255
    i32.and
    i32.const 10
    i32.add
    call $~lib/map/Map<u8,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|4
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 56
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<i32,i32>#clear
  local.get $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 416
   i32.const 60
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i16,i32>#constructor (; 144 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 112
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/util/hash/hash16 (; 145 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/map/Map<i16,i32>#find (; 146 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load16_u
     local.get $1
     i32.const 65535
     i32.and
     i32.eq
    end
    if
     local.get $0
     return
    else
     local.get $0
     i32.load offset=8
     i32.const -2
     i32.and
     local.set $0
     br $continue|0
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i16,i32>#has (; 147 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/util/hash/hash16
  call $~lib/map/Map<i16,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i16,i32>#rehash (; 148 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load16_s
     i32.store16
     local.get $3
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $5
     local.get $2
     i32.load16_s
     call $~lib/util/hash/hash16
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=8
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i16,i32>#set (; 149 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/util/hash/hash16
  local.tee $4
  call $~lib/map/Map<i16,i32>#find
  local.tee $3
  if
   local.get $3
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
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store16
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<i16,i32>#get (; 150 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/util/hash/hash16
  call $~lib/map/Map<i16,i32>#find
  local.tee $0
  i32.eqz
  if
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $~lib/map/Map<i16,i32>#entries (; 151 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 12
  i32.const 120
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array<i16>#__set (; 152 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
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
   local.tee $3
   i32.const 1
   call $~lib/array/ensureSize
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/array/Array<i16>#set:length (; 153 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=12
  drop
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array.from<i16,i16> (; 154 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  i32.const 117
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 119
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  local.get $4
  call $~lib/iterator/Iterator<i16>#next
  local.set $3
  i32.const 0
  local.set $0
  loop $continue|0
   local.get $3
   local.tee $1
   i32.const 8
   i32.sub
   i32.load
   i32.const 119
   i32.sub
   if
    unreachable
   end
   local.get $1
   call $~lib/map/KeyIterator<i32,i32>#get:done
   i32.eqz
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.sub
    i32.load
    i32.const 119
    i32.sub
    if
     unreachable
    end
    local.get $2
    local.get $3
    local.get $1
    i32.load
    call $~lib/map/EntriesIter<i32,i32>#get:entry
    i32.load16_s
    call $~lib/array/Array<i16>#__set
    local.get $4
    call $~lib/iterator/Iterator<i16>#next
    local.set $3
    local.get $1
    call $~lib/rt/pure/__release
    br $continue|0
   end
  end
  local.get $2
  local.get $0
  call $~lib/array/Array<i16>#set:length
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<i16,i16>#constructor (; 155 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 123
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array<i16>#__get (; 156 ;) (param $0 i32) (param $1 i32) (result i32)
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
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/map/Map<i16,i16>#find (; 157 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load16_u
     local.get $1
     i32.const 65535
     i32.and
     i32.eq
    end
    if
     local.get $0
     return
    else
     local.get $0
     i32.load offset=4
     i32.const -2
     i32.and
     local.set $0
     br $continue|0
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i16,i16>#rehash (; 158 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load16_s
     i32.store16
     local.get $3
     local.get $2
     i32.load16_s offset=2
     i32.store16 offset=2
     local.get $3
     local.get $5
     local.get $2
     i32.load16_s
     call $~lib/util/hash/hash16
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=4
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 8
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 8
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<i16,i16>#set (; 159 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/util/hash/hash16
  local.tee $4
  call $~lib/map/Map<i16,i16>#find
  local.tee $3
  if
   local.get $3
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
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 3
   i32.shl
   i32.add
   local.tee $3
   local.get $1
   i32.store16
   local.get $3
   local.get $2
   i32.store16 offset=2
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=4
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<i16,i32>#delete (; 160 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/util/hash/hash16
  call $~lib/map/Map<i16,i32>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
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
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
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
   local.get $2
   call $~lib/map/Map<i16,i32>#rehash
  end
 )
 (func $std/map/testNumeric<i16,i32> (; 161 ;)
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
  call $~lib/map/Map<i16,i32>#constructor
  local.set $1
  loop $loop|0
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 10
    i32.add
    call $~lib/map/Map<i16,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#get
    local.get $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 9
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 11
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#get
    local.get $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 20
    i32.add
    call $~lib/map/Map<i16,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#get
    local.get $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 19
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<i16,i32>#entries
  local.set $3
  i32.const 4
  i32.const 119
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $8
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/array/Array.from<i16,i16>
  local.set $4
  local.get $1
  call $~lib/map/Map<i16,i32>#entries
  local.set $2
  i32.const 4
  i32.const 122
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $3
  local.get $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/array/Array.from<i32,i32>
  local.set $9
  call $~lib/map/Map<i16,i16>#constructor
  local.set $5
  call $~lib/map/Map<i32,i32>#constructor
  local.set $6
  i32.const 0
  local.set $0
  loop $loop|2
   local.get $0
   local.get $4
   i32.load offset=12
   i32.lt_s
   if
    local.get $4
    local.get $0
    call $~lib/array/Array<i16>#__get
    local.set $7
    local.get $9
    local.get $0
    call $~lib/array/Array<i32>#__get
    local.set $2
    local.get $1
    local.get $7
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
    local.get $1
    local.get $2
    i32.const 20
    i32.sub
    call $~lib/map/Map<i16,i32>#has
    if
     local.get $5
     local.get $7
     local.get $7
     call $~lib/map/Map<i16,i16>#set
     local.get $6
     local.get $2
     i32.const 20
     i32.sub
     local.tee $2
     local.get $2
     call $~lib/map/Map<i32,i32>#set
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|2
    else
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
  end
  local.get $5
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|3
   local.get $0
   i32.const 50
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#get
    local.get $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|3
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|4
   local.get $0
   i32.const 50
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 10
    i32.add
    call $~lib/map/Map<i16,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|4
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 56
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<i32,i32>#clear
  local.get $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 416
   i32.const 60
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u16,i32>#constructor (; 162 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 126
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/map/Map<u16,i32>#has (; 163 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 65535
  i32.and
  call $~lib/util/hash/hash16
  call $~lib/map/Map<i16,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<u16,i32>#rehash (; 164 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load16_u
     i32.store16
     local.get $3
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $5
     local.get $2
     i32.load16_u
     call $~lib/util/hash/hash16
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=8
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u16,i32>#set (; 165 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 65535
  i32.and
  call $~lib/util/hash/hash16
  local.tee $4
  call $~lib/map/Map<i16,i32>#find
  local.tee $3
  if
   local.get $3
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
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store16
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<u16,i32>#get (; 166 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 65535
  i32.and
  call $~lib/util/hash/hash16
  call $~lib/map/Map<i16,i32>#find
  local.tee $0
  i32.eqz
  if
   i32.const 464
   i32.const 528
   i32.const 189
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $~lib/map/Map<u16,i32>#entries (; 167 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 12
  i32.const 134
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array.from<u16,u16> (; 168 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  i32.const 131
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 133
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  local.get $4
  call $~lib/iterator/Iterator<u16>#next
  local.set $3
  i32.const 0
  local.set $0
  loop $continue|0
   local.get $3
   local.tee $1
   i32.const 8
   i32.sub
   i32.load
   i32.const 133
   i32.sub
   if
    unreachable
   end
   local.get $1
   call $~lib/map/KeyIterator<i32,i32>#get:done
   i32.eqz
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.sub
    i32.load
    i32.const 133
    i32.sub
    if
     unreachable
    end
    local.get $2
    local.get $3
    local.get $1
    i32.load
    call $~lib/map/EntriesIter<i32,i32>#get:entry
    i32.load16_u
    call $~lib/array/Array<i16>#__set
    local.get $4
    call $~lib/iterator/Iterator<u16>#next
    local.set $3
    local.get $1
    call $~lib/rt/pure/__release
    br $continue|0
   end
  end
  local.get $2
  local.get $0
  call $~lib/array/Array<i16>#set:length
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<u16,u16>#constructor (; 169 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 137
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
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
 (func $~lib/array/Array<u16>#__get (; 170 ;) (param $0 i32) (param $1 i32) (result i32)
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
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/map/Map<u16,u16>#rehash (; 171 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load16_u
     i32.store16
     local.get $3
     local.get $2
     i32.load16_u offset=2
     i32.store16 offset=2
     local.get $3
     local.get $5
     local.get $2
     i32.load16_u
     call $~lib/util/hash/hash16
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=4
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 8
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 8
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u16,u16>#set (; 172 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 65535
  i32.and
  call $~lib/util/hash/hash16
  local.tee $4
  call $~lib/map/Map<i16,i16>#find
  local.tee $3
  if
   local.get $3
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
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 3
   i32.shl
   i32.add
   local.tee $3
   local.get $1
   i32.store16
   local.get $3
   local.get $2
   i32.store16 offset=2
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=4
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<u16,i32>#delete (; 173 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 65535
  i32.and
  call $~lib/util/hash/hash16
  call $~lib/map/Map<i16,i32>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
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
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
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
   local.get $2
   call $~lib/map/Map<u16,i32>#rehash
  end
 )
 (func $std/map/testNumeric<u16,i32> (; 174 ;)
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
  call $~lib/map/Map<u16,i32>#constructor
  local.set $1
  loop $loop|0
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 65535
    i32.and
    i32.const 10
    i32.add
    call $~lib/map/Map<u16,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#get
    local.get $0
    i32.const 65535
    i32.and
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 9
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 11
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#get
    local.get $0
    i32.const 65535
    i32.and
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 65535
    i32.and
    i32.const 20
    i32.add
    call $~lib/map/Map<u16,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#get
    local.get $0
    i32.const 65535
    i32.and
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 19
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<u16,i32>#entries
  local.set $3
  i32.const 4
  i32.const 133
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $8
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/array/Array.from<u16,u16>
  local.set $4
  local.get $1
  call $~lib/map/Map<u16,i32>#entries
  local.set $2
  i32.const 4
  i32.const 136
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $3
  local.get $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/array/Array.from<i32,i32>
  local.set $9
  call $~lib/map/Map<u16,u16>#constructor
  local.set $5
  call $~lib/map/Map<i32,i32>#constructor
  local.set $6
  i32.const 0
  local.set $0
  loop $loop|2
   local.get $0
   local.get $4
   i32.load offset=12
   i32.lt_s
   if
    local.get $4
    local.get $0
    call $~lib/array/Array<u16>#__get
    local.set $7
    local.get $9
    local.get $0
    call $~lib/array/Array<i32>#__get
    local.set $2
    local.get $1
    local.get $7
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
    local.get $1
    local.get $2
    i32.const 20
    i32.sub
    call $~lib/map/Map<u16,i32>#has
    if
     local.get $5
     local.get $7
     local.get $7
     call $~lib/map/Map<u16,u16>#set
     local.get $6
     local.get $2
     i32.const 20
     i32.sub
     local.tee $2
     local.get $2
     call $~lib/map/Map<i32,i32>#set
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|2
    else
     i32.const 0
     i32.const 416
     i32.const 32
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
  end
  local.get $5
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|3
   local.get $0
   i32.const 50
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#get
    local.get $0
    i32.const 65535
    i32.and
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 416
     i32.const 42
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 44
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|3
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $loop|4
   local.get $0
   i32.const 50
   i32.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 50
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 65535
    i32.and
    i32.const 10
    i32.add
    call $~lib/map/Map<u16,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#has
    if
     i32.const 0
     i32.const 416
     i32.const 54
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|4
    end
    unreachable
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 56
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/map/Map<i32,i32>#clear
  local.get $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 416
   i32.const 60
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $start (; 175 ;)
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
 (func $~lib/rt/pure/__visit (; 176 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 1732
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $0
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        local.get $1
        i32.const 1
        i32.ne
        if
         local.get $1
         i32.const 2
         i32.sub
         br_table $case1|0 $case2|0 $case3|0 $case4|0 $case5|0
        end
        local.get $0
        call $~lib/rt/pure/decrement
        br $break|0
       end
       local.get $0
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.le_u
       if
        i32.const 0
        i32.const 144
        i32.const 75
        i32.const 17
        call $~lib/builtins/abort
        unreachable
       end
       local.get $0
       local.get $0
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $0
       call $~lib/rt/pure/markGray
       br $break|0
      end
      local.get $0
      call $~lib/rt/pure/scan
      br $break|0
     end
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.const -268435456
     i32.and
     local.get $1
     i32.const 1
     i32.add
     i32.const -268435456
     i32.and
     i32.ne
     if
      i32.const 0
      i32.const 144
      i32.const 86
      i32.const 6
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $1
     i32.const 1879048192
     i32.and
     if
      local.get $0
      call $~lib/rt/pure/scanBlack
     end
     br $break|0
    end
    local.get $0
    call $~lib/rt/pure/collectWhite
    br $break|0
   end
   i32.const 0
   i32.const 144
   i32.const 97
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/__visit_members (; 177 ;) (param $0 i32) (param $1 i32)
  block $folding-inner0
   block $block$4$break
    block $switch$1$default
     block $switch$1$case$2
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      br_table $switch$1$case$2 $switch$1$case$2 $block$4$break $folding-inner0 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $block$4$break $switch$1$case$2 $block$4$break $switch$1$case$2 $switch$1$case$2 $block$4$break $folding-inner0 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $block$4$break $switch$1$case$2 $block$4$break $switch$1$case$2 $switch$1$case$2 $block$4$break $folding-inner0 $switch$1$case$2 $switch$1$case$2 $folding-inner0 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $block$4$break $switch$1$case$2 $block$4$break $switch$1$case$2 $switch$1$case$2 $block$4$break $folding-inner0 $switch$1$case$2 $switch$1$case$2 $folding-inner0 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $block$4$break $switch$1$case$2 $block$4$break $switch$1$case$2 $switch$1$case$2 $block$4$break $folding-inner0 $switch$1$case$2 $switch$1$case$2 $folding-inner0 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $block$4$break $switch$1$case$2 $block$4$break $switch$1$case$2 $switch$1$case$2 $block$4$break $folding-inner0 $switch$1$case$2 $switch$1$case$2 $folding-inner0 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $block$4$break $switch$1$case$2 $block$4$break $switch$1$case$2 $switch$1$case$2 $block$4$break $folding-inner0 $switch$1$case$2 $switch$1$case$2 $folding-inner0 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $block$4$break $switch$1$case$2 $block$4$break $switch$1$case$2 $switch$1$case$2 $block$4$break $folding-inner0 $switch$1$case$2 $switch$1$case$2 $folding-inner0 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $block$4$break $switch$1$case$2 $block$4$break $switch$1$case$2 $switch$1$case$2 $block$4$break $folding-inner0 $switch$1$case$2 $switch$1$case$2 $folding-inner0 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $block$4$break $switch$1$case$2 $block$4$break $switch$1$case$2 $switch$1$case$2 $block$4$break $folding-inner0 $switch$1$case$2 $switch$1$case$2 $folding-inner0 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $block$4$break $switch$1$case$2 $block$4$break $switch$1$case$2 $switch$1$case$2 $block$4$break $folding-inner0 $switch$1$case$2 $switch$1$case$2 $switch$1$default
     end
     return
    end
    unreachable
   end
   local.get $0
   i32.load
   local.tee $0
   if
    local.get $0
    local.get $1
    call $~lib/rt/pure/__visit
   end
   return
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/iterator/Iterable<i32>#get:iterator (; 178 ;) (param $0 i32) (result i32)
  block $folding-inner0
   block $switch$1$case$13
    block $switch$1$default
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 10
     i32.sub
     br_table $folding-inner0 $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$13 $switch$1$default
    end
    unreachable
   end
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/EntriesIter<i32,i32>#get:done (; 179 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.ge_u
 )
 (func $~lib/map/EntriesIter<i32,i32>#get:entry (; 180 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.const 12
  i32.mul
  i32.add
 )
 (func $~lib/map/EntriesIter<i32,i32>#next (; 181 ;) (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  loop $continue|0
   local.get $0
   call $~lib/map/EntriesIter<i32,i32>#get:done
   if (result i32)
    i32.const 0
   else
    local.get $0
    call $~lib/map/EntriesIter<i32,i32>#get:entry
    i32.load offset=8
    i32.const 1
    i32.and
   end
   if
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    br $continue|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/KeyIterator<i32,i32>#next (; 182 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i32,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/EntriesIter<i64,i32>#get:entry (; 183 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.const 4
  i32.shl
  i32.add
 )
 (func $~lib/map/EntriesIter<i64,i32>#next (; 184 ;) (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  loop $continue|0
   local.get $0
   call $~lib/map/EntriesIter<i32,i32>#get:done
   if (result i32)
    i32.const 0
   else
    local.get $0
    call $~lib/map/EntriesIter<i64,i32>#get:entry
    i32.load offset=12
    i32.const 1
    i32.and
   end
   if
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    br $continue|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/ValueIterator<i64,i32>#next (; 185 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i64,i32>#next
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/iterator/Iterator<i32>#next (; 186 ;) (param $0 i32) (result i32)
  block $folding-inner0
   block $switch$1$case$13
    block $switch$1$case$9
     block $switch$1$case$7
      block $switch$1$case$6
       block $switch$1$default
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 10
        i32.sub
        br_table $folding-inner0 $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$6 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$7 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$9 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$13 $switch$1$default
       end
       unreachable
      end
      local.get $0
      call $~lib/map/ValueIterator<i64,i32>#next
      return
     end
     local.get $0
     call $~lib/map/ValueIterator<i64,i32>#next
     return
    end
    local.get $0
    call $~lib/map/ValueIterator<i64,i32>#next
    return
   end
   local.get $0
   call $~lib/map/KeyIterator<i32,i32>#next
   return
  end
  local.get $0
  call $~lib/map/KeyIterator<i32,i32>#next
 )
 (func $~lib/map/KeyIterator<i32,i32>#get:done (; 187 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i32,i32>#get:done
 )
 (func $~lib/iterator/IteratorResult<i32>#get:done (; 188 ;) (param $0 i32) (result i32)
  block $folding-inner0
   block $switch$1$case$13
    block $switch$1$default
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 10
     i32.sub
     br_table $folding-inner0 $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$13 $switch$1$default
    end
    unreachable
   end
   local.get $0
   call $~lib/map/KeyIterator<i32,i32>#get:done
   return
  end
  local.get $0
  call $~lib/map/KeyIterator<i32,i32>#get:done
 )
 (func $~lib/map/KeyIterator<i32,i32>#get:value (; 189 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i32,i32>#get:entry
  i32.load
 )
 (func $~lib/map/ValueIterator<i32,i32>#get:value (; 190 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i32,i32>#get:entry
  i32.load offset=4
 )
 (func $~lib/map/ValueIterator<i64,i32>#get:value (; 191 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i64,i32>#get:entry
  i32.load offset=8
 )
 (func $~lib/iterator/IteratorResult<i32>#get:value (; 192 ;) (param $0 i32) (result i32)
  block $folding-inner0
   block $switch$1$case$13
    block $switch$1$case$9
     block $switch$1$case$7
      block $switch$1$case$6
       block $switch$1$case$3
        block $switch$1$default
         local.get $0
         i32.const 8
         i32.sub
         i32.load
         i32.const 10
         i32.sub
         br_table $switch$1$case$3 $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$6 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$7 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$9 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $folding-inner0 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$13 $switch$1$default
        end
        unreachable
       end
       local.get $0
       call $~lib/map/KeyIterator<i32,i32>#get:value
       return
      end
      local.get $0
      call $~lib/map/ValueIterator<i64,i32>#get:value
      return
     end
     local.get $0
     call $~lib/map/ValueIterator<i64,i32>#get:value
     return
    end
    local.get $0
    call $~lib/map/ValueIterator<i64,i32>#get:value
    return
   end
   local.get $0
   call $~lib/map/ValueIterator<i32,i32>#get:value
   return
  end
  local.get $0
  call $~lib/map/ValueIterator<i32,i32>#get:value
 )
 (func $~lib/iterator/Iterator<u32>#next (; 193 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 21
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i32,i32>#next
 )
 (func $~lib/iterator/Iterator<i64>#next (; 194 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 35
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/map/ValueIterator<i64,i32>#next
 )
 (func $~lib/map/KeyIterator<i64,i32>#get:value (; 195 ;) (param $0 i32) (result i64)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<i64,i32>#get:entry
  i64.load
 )
 (func $~lib/iterator/Iterator<u64>#next (; 196 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 49
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/map/ValueIterator<i64,i32>#next
 )
 (func $~lib/iterator/Iterator<f32>#next (; 197 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 63
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i32,i32>#next
 )
 (func $~lib/iterator/Iterator<f64>#next (; 198 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 77
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/map/ValueIterator<i64,i32>#next
 )
 (func $~lib/iterator/Iterator<i8>#next (; 199 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 91
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i32,i32>#next
 )
 (func $~lib/iterator/Iterator<u8>#next (; 200 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 105
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i32,i32>#next
 )
 (func $~lib/iterator/Iterator<i16>#next (; 201 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 119
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i32,i32>#next
 )
 (func $~lib/iterator/Iterator<u16>#next (; 202 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 133
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/map/KeyIterator<i32,i32>#next
 )
)
