(module
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_f64 (func (result f64)))
 (type $none_=>_none (func))
 (import "wasi_snapshot_preview1" "clock_time_get" (func $~lib/bindings/wasi_snapshot_preview1/clock_time_get (param i32 i64 i32) (result i32)))
 (import "wasi_snapshot_preview1" "fd_write" (func $~lib/bindings/wasi_snapshot_preview1/fd_write (param i32 i32 i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "proc_exit" (func $~lib/bindings/wasi_snapshot_preview1/proc_exit (param i32)))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1052) "<")
 (data (i32.const 1064) "\01\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data (i32.const 1116) ",")
 (data (i32.const 1128) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1164) "\\")
 (data (i32.const 1176) "\01\00\00\00L\00\00\00C\00a\00n\00\'\00t\00 \00r\00e\00t\00r\00i\00v\00e\00 \00t\00i\00m\00e\00 \00f\00r\00o\00m\00 \00c\00l\00o\00c\00k\00_\00t\00i\00m\00e\00_\00g\00e\00t")
 (data (i32.const 1260) "<")
 (data (i32.const 1272) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00p\00e\00r\00f\00o\00r\00m\00a\00n\00c\00e\00.\00t\00s")
 (export "test_date_now" (func $wasi/now/test_date_now))
 (export "test_performance_now" (func $wasi/now/test_performance_now))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $wasi/now/test_date_now (result i64)
  i32.const 0
  i64.const 1000000
  i32.const 1024
  call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
  drop
  i32.const 1024
  i64.load
  i64.const 1000000
  i64.div_u
 )
 (func $~lib/string/String.UTF8.encodeUnsafe@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $2of2
   block $outOfRange
    global.get $~argumentsLength
    i32.const 3
    i32.sub
    br_table $2of2 $2of2 $2of2 $outOfRange
   end
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $3
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $4
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $4
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $4
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $4
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $4
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $4
      i32.const 56320
      i32.lt_u
      local.get $0
      i32.const 2
      i32.add
      local.get $3
      i32.lt_u
      i32.and
      local.get $4
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      i32.and
      if
       local.get $0
       i32.load16_u offset=2
       local.tee $5
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $1
        local.get $4
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $5
        i32.const 1023
        i32.and
        i32.or
        local.tee $4
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $4
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $4
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        local.get $4
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.or
        i32.store
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      local.get $1
      local.get $4
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $4
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
      local.get $1
      local.get $4
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  local.get $1
  local.get $2
  i32.sub
 )
 (func $wasi/now/test_performance_now (result f64)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  i64.const 1000
  i32.const 1024
  call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
  i32.const 65535
  i32.and
  if
   i32.const 1
   i64.const 1000000
   i32.const 1024
   call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
   i32.const 65535
   i32.and
   if
    i32.const 18
    local.set $1
    i32.const 18
    local.set $2
    i32.const 0
    i32.const 12
    i32.store
    i32.const 12
    i64.const 9071471065260641
    i64.store
    i32.const 1180
    i32.load
    i32.const 1
    i32.shr_u
    local.set $0
    i32.const 3
    global.set $~argumentsLength
    i32.const 1184
    local.get $0
    i32.const 19
    call $~lib/string/String.UTF8.encodeUnsafe@varargs
    i32.const 19
    i32.add
    local.tee $3
    i32.const 544106784
    i32.store
    i32.const 1276
    i32.load
    i32.const 1
    i32.shr_u
    local.set $0
    i32.const 3
    global.set $~argumentsLength
    i32.const 1280
    local.get $0
    local.get $3
    i32.const 4
    i32.add
    local.tee $0
    call $~lib/string/String.UTF8.encodeUnsafe@varargs
    local.get $0
    i32.add
    local.tee $0
    i32.const 40
    i32.store8
    local.get $0
    i32.const 3
    i32.add
    local.set $0
    loop $do-loop|0
     local.get $0
     i32.const 1
     i32.sub
     local.tee $0
     local.get $2
     i32.const 10
     i32.rem_u
     i32.const 48
     i32.add
     i32.store8
     local.get $2
     i32.const 10
     i32.div_u
     local.tee $2
     br_if $do-loop|0
    end
    local.get $0
    i32.const 2
    i32.add
    local.tee $0
    i32.const 58
    i32.store8
    local.get $0
    i32.const 3
    i32.add
    local.set $0
    loop $do-loop|1
     local.get $0
     i32.const 1
     i32.sub
     local.tee $0
     local.get $1
     i32.const 10
     i32.rem_u
     i32.const 48
     i32.add
     i32.store8
     local.get $1
     i32.const 10
     i32.div_u
     local.tee $1
     br_if $do-loop|1
    end
    local.get $0
    i32.const 2
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
    unreachable
   end
  end
  i32.const 1024
  i64.load
  f64.convert_i64_u
  f64.const 1e6
  f64.div
 )
 (func $~start
  nop
 )
)
