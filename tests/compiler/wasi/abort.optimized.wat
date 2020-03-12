(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "fd_write" (func $~lib/bindings/wasi_snapshot_preview1/fd_write (param i32 i32 i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "proc_exit" (func $~lib/bindings/wasi_snapshot_preview1/proc_exit (param i32)))
 (memory $0 1)
 (data (i32.const 16) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00t\00h\00e\00 \00m\00e\00s\00s\00a\00g\00e")
 (data (i32.const 64) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00w\00a\00s\00i\00/\00a\00b\00o\00r\00t\00.\00t\00s")
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (export "test" (func $wasi/abort/test))
 (func $~lib/string/String.UTF8.encodeUnsafe (; 2 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.tee $3
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $5
  local.get $1
  local.set $0
  loop $while-continue|0
   local.get $3
   local.get $5
   i32.lt_u
   if
    local.get $3
    i32.load16_u
    local.tee $2
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $0
     local.get $2
     i32.store8
     local.get $0
     i32.const 1
     i32.add
    else
     local.get $2
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $0
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $2
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
      local.get $3
      i32.const 2
      i32.add
      local.get $5
      i32.lt_u
      i32.const 0
      local.get $2
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      select
      if
       local.get $3
       i32.load16_u offset=2
       local.tee $4
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $2
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $4
        i32.const 1023
        i32.and
        i32.or
        local.tee $2
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        local.set $4
        local.get $0
        local.get $2
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        local.get $4
        i32.const 24
        i32.shl
        local.get $2
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $2
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        i32.or
        i32.store
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        local.get $3
        i32.const 4
        i32.add
        local.set $3
        br $while-continue|0
       end
      end
      local.get $0
      local.get $2
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $2
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
      local.get $2
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
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  local.get $0
  local.get $1
  i32.sub
 )
 (func $~lib/util/number/decimalCount32 (; 3 ;) (param $0 i32) (result i32)
  i32.const 1
  i32.const 2
  local.get $0
  i32.const 10
  i32.lt_u
  select
  i32.const 3
  i32.const 4
  i32.const 5
  local.get $0
  i32.const 10000
  i32.lt_u
  select
  local.get $0
  i32.const 1000
  i32.lt_u
  select
  local.get $0
  i32.const 100
  i32.lt_u
  select
  i32.const 6
  i32.const 7
  local.get $0
  i32.const 1000000
  i32.lt_u
  select
  i32.const 8
  i32.const 9
  i32.const 10
  local.get $0
  i32.const 1000000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000000
  i32.lt_u
  select
  local.get $0
  i32.const 10000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000
  i32.lt_u
  select
 )
 (func $~lib/bindings/wasi/abort (; 4 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 2
  local.set $3
  i32.const 4
  local.set $1
  i32.const 0
  i32.const 12
  i32.store
  i32.const 12
  i64.const 9071471065260609
  i64.store
  i32.const 32
  i32.const 19
  call $~lib/string/String.UTF8.encodeUnsafe
  i32.const 19
  i32.add
  local.tee $0
  i32.const 544106762
  i32.store
  local.get $0
  i32.const 4
  i32.add
  local.tee $0
  i32.const 80
  local.get $0
  call $~lib/string/String.UTF8.encodeUnsafe
  i32.add
  local.tee $0
  i32.const 40
  i32.store8
  i32.const 4
  call $~lib/util/number/decimalCount32
  local.tee $4
  local.get $0
  i32.const 1
  i32.add
  i32.add
  local.set $2
  loop $do-continue|0
   local.get $1
   i32.const 10
   i32.div_u
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   local.get $1
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store8
   local.tee $1
   br_if $do-continue|0
  end
  local.get $2
  local.get $4
  i32.add
  local.tee $1
  i32.const 58
  i32.store8
  i32.const 2
  call $~lib/util/number/decimalCount32
  local.tee $0
  local.get $1
  i32.const 1
  i32.add
  i32.add
  local.set $2
  loop $do-continue|1
   local.get $3
   i32.const 10
   i32.div_u
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   local.get $3
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store8
   local.tee $3
   br_if $do-continue|1
  end
  local.get $0
  local.get $2
  i32.add
  local.tee $3
  i32.const 41
  i32.store8
  i32.const 4
  local.get $3
  i32.const -11
  i32.add
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
 (func $wasi/abort/test (; 5 ;)
  call $~lib/bindings/wasi/abort
  unreachable
 )
 (func $~start (; 6 ;)
  nop
 )
)
