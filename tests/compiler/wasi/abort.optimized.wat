(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
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
 (func $~lib/string/String#get:length (; 2 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charCodeAt (; 3 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const -1
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/util/number/decimalCount32 (; 4 ;) (param $0 i32) (result i32)
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
 (func $~lib/bindings/wasi/abort (; 5 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 2
  local.set $4
  i32.const 4
  local.set $5
  i32.const 0
  i32.const 8
  i32.store
  i32.const 8
  i64.const 9071471065260609
  i64.store
  i32.const 15
  local.set $0
  i32.const 32
  call $~lib/string/String#get:length
  local.set $6
  loop $for-loop|0
   local.get $3
   local.get $6
   i32.lt_s
   if
    local.get $0
    local.tee $1
    i32.const 1
    i32.add
    local.set $0
    i32.const 32
    local.get $3
    call $~lib/string/String#charCodeAt
    local.tee $2
    i32.const 32
    i32.ge_s
    if (result i32)
     local.get $2
     i32.const 126
     i32.le_s
    else
     i32.const 0
    end
    i32.eqz
    if
     i32.const 63
     local.set $2
    end
    local.get $1
    local.get $2
    i32.store8
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 544106762
  i32.store
  local.get $0
  i32.const 4
  i32.add
  local.set $0
  i32.const 0
  local.set $3
  i32.const 80
  call $~lib/string/String#get:length
  local.set $6
  loop $for-loop|1
   local.get $3
   local.get $6
   i32.lt_s
   if
    local.get $0
    local.tee $1
    i32.const 1
    i32.add
    local.set $0
    i32.const 80
    local.get $3
    call $~lib/string/String#charCodeAt
    local.tee $2
    i32.const 32
    i32.ge_s
    if (result i32)
     local.get $2
     i32.const 126
     i32.le_s
    else
     i32.const 0
    end
    i32.eqz
    if
     i32.const 63
     local.set $2
    end
    local.get $1
    local.get $2
    i32.store8
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  local.get $0
  i32.const 40
  i32.store8
  i32.const 4
  call $~lib/util/number/decimalCount32
  local.tee $2
  local.get $0
  i32.const 1
  i32.add
  i32.add
  local.set $0
  loop $do-continue|2
   local.get $5
   i32.const 10
   i32.div_u
   local.get $0
   i32.const 1
   i32.sub
   local.tee $0
   local.get $5
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store8
   local.tee $5
   br_if $do-continue|2
  end
  local.get $0
  local.get $2
  i32.add
  local.tee $1
  i32.const 58
  i32.store8
  i32.const 2
  call $~lib/util/number/decimalCount32
  local.tee $2
  local.get $1
  i32.const 1
  i32.add
  i32.add
  local.set $0
  loop $do-continue|3
   local.get $4
   i32.const 10
   i32.div_u
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
   local.tee $4
   br_if $do-continue|3
  end
  local.get $0
  local.get $2
  i32.add
  local.tee $1
  i32.const 41
  i32.store8
  i32.const 4
  local.get $1
  i32.const -7
  i32.add
  i32.store
  i32.const 2
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/bindings/wasi_snapshot_preview1/fd_write
  drop
  i32.const 255
  call $~lib/bindings/wasi_snapshot_preview1/proc_exit
 )
 (func $wasi/abort/test (; 6 ;)
  call $~lib/bindings/wasi/abort
  unreachable
 )
 (func $~start (; 7 ;)
  nop
 )
)
