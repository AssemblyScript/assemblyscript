(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_f64 (func (result f64)))
 (import "wasi_snapshot_preview1" "random_get" (func $~lib/bindings/wasi_snapshot_preview1/random_get (param i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "fd_write" (func $~lib/bindings/wasi_snapshot_preview1/fd_write (param i32 i32 i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "proc_exit" (func $~lib/bindings/wasi_snapshot_preview1/proc_exit (param i32)))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state0_32 (mut i32) (i32.const 0))
 (global $~lib/math/random_state1_32 (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data (i32.const 1100) ",")
 (data (i32.const 1112) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1148) ",")
 (data (i32.const 1160) "\01\00\00\00\18\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s")
 (export "test" (func $wasi/seed/test))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $~lib/wasi/index/abort
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 5
  local.set $3
  i32.const 1425
  local.set $4
  i32.const 0
  i32.const 12
  i32.store
  i32.const 12
  i64.const 9071471065260641
  i64.store
  i32.const 19
  i32.const 544106784
  i32.store
  i32.const 1168
  local.set $2
  i32.const 1164
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  i32.const 1168
  i32.add
  local.set $5
  i32.const 23
  local.set $0
  loop $while-continue|0
   local.get $2
   local.get $5
   i32.lt_u
   if
    local.get $2
    i32.load16_u
    local.tee $1
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $0
     local.get $1
     i32.store8
     local.get $0
     i32.const 1
     i32.add
    else
     local.get $1
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $0
      local.get $1
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $0
      i32.const 2
      i32.add
     else
      local.get $1
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      if
       local.get $5
       local.get $2
       i32.const 2
       i32.add
       i32.gt_u
       i32.const 0
       local.get $1
       i32.const 56320
       i32.lt_u
       select
       if
        local.get $2
        i32.load16_u offset=2
        local.tee $6
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $0
         local.get $1
         i32.const 1023
         i32.and
         i32.const 10
         i32.shl
         i32.const 65536
         i32.add
         local.get $6
         i32.const 1023
         i32.and
         i32.or
         local.tee $1
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 24
         i32.shl
         local.get $1
         i32.const 6
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 16
         i32.shl
         i32.or
         local.get $1
         i32.const 12
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 8
         i32.shl
         i32.or
         local.get $1
         i32.const 18
         i32.shr_u
         i32.const 240
         i32.or
         i32.or
         i32.store
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         local.get $2
         i32.const 4
         i32.add
         local.set $2
         br $while-continue|0
        end
       end
      end
      local.get $0
      local.get $1
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $0
      local.get $1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $0
      i32.const 3
      i32.add
     end
    end
    local.set $0
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 40
  i32.store8
  local.get $0
  i32.const 5
  i32.add
  local.set $0
  loop $do-loop|0
   local.get $0
   i32.const 1
   i32.sub
   local.tee $0
   local.get $4
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store8
   local.get $4
   i32.const 10
   i32.div_u
   local.tee $4
   br_if $do-loop|0
  end
  local.get $0
  i32.const 4
  i32.add
  local.tee $0
  i32.const 58
  i32.store8
  local.get $0
  i32.const 2
  i32.add
  local.set $0
  loop $do-loop|1
   local.get $0
   i32.const 1
   i32.sub
   local.tee $0
   local.get $3
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store8
   local.get $3
   i32.const 10
   i32.div_u
   local.tee $3
   br_if $do-loop|1
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $0
  i32.const 2601
  i32.store16
  i32.const 4
  local.get $0
  i32.const 10
  i32.sub
  i32.store
  i32.const 2
  i32.const 0
  i32.const 1
  i32.const 8
  call $~lib/bindings/wasi_snapshot_preview1/fd_write
  drop
  i32.const 255
  call $~lib/bindings/wasi_snapshot_preview1/proc_exit
 )
 (func $wasi/seed/test (result f64)
  (local $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   i32.const 0
   i64.load
   local.set $1
   loop $do-loop|0
    i32.const 0
    i32.const 8
    call $~lib/bindings/wasi_snapshot_preview1/random_get
    drop
    i32.const 0
    i64.load
    local.tee $2
    i64.eqz
    br_if $do-loop|0
   end
   i32.const 0
   local.get $1
   i64.store
   i64.const -7046029254386353131
   local.get $2
   local.get $2
   i64.eqz
   select
   local.tee $2
   local.get $2
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   global.set $~lib/math/random_state0_64
   global.get $~lib/math/random_state0_64
   local.tee $1
   i64.const -1
   i64.xor
   local.tee $3
   local.get $3
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $3
   local.get $3
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $3
   local.get $3
   i64.const 33
   i64.shr_u
   i64.xor
   global.set $~lib/math/random_state1_64
   local.get $2
   i32.wrap_i64
   i32.const 1831565813
   i32.add
   local.tee $0
   i32.const 1
   i32.or
   local.get $0
   i32.const 15
   i32.shr_u
   local.get $0
   i32.xor
   i32.mul
   local.tee $0
   local.get $0
   local.get $0
   i32.const 61
   i32.or
   local.get $0
   i32.const 7
   i32.shr_u
   local.get $0
   i32.xor
   i32.mul
   i32.add
   i32.xor
   local.tee $0
   local.get $0
   i32.const 14
   i32.shr_u
   i32.xor
   global.set $~lib/math/random_state0_32
   global.get $~lib/math/random_state0_32
   local.tee $4
   i32.const 1831565813
   i32.add
   local.tee $0
   i32.const 1
   i32.or
   local.get $0
   i32.const 15
   i32.shr_u
   local.get $0
   i32.xor
   i32.mul
   local.tee $0
   local.get $0
   local.get $0
   i32.const 61
   i32.or
   local.get $0
   i32.const 7
   i32.shr_u
   local.get $0
   i32.xor
   i32.mul
   i32.add
   i32.xor
   local.tee $0
   local.get $0
   i32.const 14
   i32.shr_u
   i32.xor
   global.set $~lib/math/random_state1_32
   i32.const 1
   global.set $~lib/math/random_seeded
   global.get $~lib/math/random_state1_32
   i32.const 0
   i32.ne
   i32.const 0
   local.get $4
   i32.const 0
   global.get $~lib/math/random_state1_64
   i64.const 0
   i64.ne
   i32.const 0
   local.get $1
   i64.const 0
   i64.ne
   select
   select
   select
   i32.eqz
   if
    call $~lib/wasi/index/abort
    unreachable
   end
  end
  global.get $~lib/math/random_state0_64
  local.set $1
  global.get $~lib/math/random_state1_64
  local.tee $2
  global.set $~lib/math/random_state0_64
  local.get $2
  local.get $1
  i64.const 23
  i64.shl
  local.get $1
  i64.xor
  local.tee $1
  local.get $1
  i64.const 17
  i64.shr_u
  i64.xor
  i64.xor
  local.get $2
  i64.const 26
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state1_64
  local.get $2
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  f64.reinterpret_i64
  f64.const 1
  f64.sub
 )
 (func $~start
  nop
 )
)
