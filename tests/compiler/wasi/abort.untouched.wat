(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "fd_write" (func $~lib/bindings/wasi_snapshot_preview1/fd_write (param i32 i32 i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "proc_exit" (func $~lib/bindings/wasi_snapshot_preview1/proc_exit (param i32)))
 (memory $0 1)
 (data (i32.const 16) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00t\00h\00e\00 \00m\00e\00s\00s\00a\00g\00e\00")
 (data (i32.const 64) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00w\00a\00s\00i\00/\00a\00b\00o\00r\00t\00.\00t\00s\00")
 (table $0 1 funcref)
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (export "test" (func $wasi/abort/test))
 (func $~lib/rt/stub/__retain (; 2 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/string/String#get:length (; 3 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charCodeAt (; 4 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/util/number/decimalCount32 (; 5 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    i32.const 2
    local.get $0
    i32.const 10
    i32.lt_u
    select
    return
   else
    i32.const 4
    i32.const 5
    local.get $0
    i32.const 10000
    i32.lt_u
    select
    local.set $1
    i32.const 3
    local.get $1
    local.get $0
    i32.const 1000
    i32.lt_u
    select
    return
   end
   unreachable
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    i32.const 7
    local.get $0
    i32.const 1000000
    i32.lt_u
    select
    return
   else
    i32.const 9
    i32.const 10
    local.get $0
    i32.const 1000000000
    i32.lt_u
    select
    local.set $1
    i32.const 8
    local.get $1
    local.get $0
    i32.const 100000000
    i32.lt_u
    select
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/rt/stub/__release (; 6 ;) (param $0 i32)
  nop
 )
 (func $~lib/bindings/wasi/abort (; 7 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 8
  local.set $4
  i32.const 0
  local.get $4
  i32.store
  local.get $4
  i64.const 9071471065260609
  i64.store
  local.get $4
  i32.const 7
  i32.add
  local.set $4
  i32.const 0
  local.set $5
  local.get $0
  call $~lib/string/String#get:length
  local.set $6
  loop $for-loop|0
   local.get $5
   local.get $6
   i32.lt_s
   local.set $7
   local.get $7
   if
    local.get $0
    local.get $5
    call $~lib/string/String#charCodeAt
    local.set $8
    local.get $4
    local.tee $9
    i32.const 1
    i32.add
    local.set $4
    local.get $9
    local.get $8
    i32.const 32
    i32.ge_s
    if (result i32)
     local.get $8
     i32.const 126
     i32.le_s
    else
     i32.const 0
    end
    if (result i32)
     local.get $8
    else
     i32.const 63
    end
    i32.store8
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $4
  i32.const 544106762
  i32.store
  local.get $4
  i32.const 4
  i32.add
  local.set $4
  i32.const 0
  local.set $6
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  loop $for-loop|1
   local.get $6
   local.get $5
   i32.lt_s
   local.set $7
   local.get $7
   if
    local.get $1
    local.get $6
    call $~lib/string/String#charCodeAt
    local.set $8
    local.get $4
    local.tee $9
    i32.const 1
    i32.add
    local.set $4
    local.get $9
    local.get $8
    i32.const 32
    i32.ge_s
    if (result i32)
     local.get $8
     i32.const 126
     i32.le_s
    else
     i32.const 0
    end
    if (result i32)
     local.get $8
    else
     i32.const 63
    end
    i32.store8
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|1
   end
  end
  local.get $4
  local.tee $5
  i32.const 1
  i32.add
  local.set $4
  local.get $5
  i32.const 40
  i32.store8
  local.get $2
  call $~lib/util/number/decimalCount32
  local.set $10
  local.get $4
  local.get $10
  i32.add
  local.set $4
  loop $do-continue|2
   local.get $2
   i32.const 10
   i32.div_u
   local.set $5
   local.get $4
   i32.const 1
   i32.sub
   local.tee $4
   i32.const 48
   local.get $2
   i32.const 10
   i32.rem_u
   i32.add
   i32.store8
   local.get $5
   local.set $2
   local.get $2
   local.set $6
   local.get $6
   br_if $do-continue|2
  end
  local.get $4
  local.get $10
  i32.add
  local.set $4
  local.get $4
  local.tee $6
  i32.const 1
  i32.add
  local.set $4
  local.get $6
  i32.const 58
  i32.store8
  local.get $3
  call $~lib/util/number/decimalCount32
  local.set $10
  local.get $4
  local.get $10
  i32.add
  local.set $4
  loop $do-continue|3
   local.get $3
   i32.const 10
   i32.div_u
   local.set $6
   local.get $4
   i32.const 1
   i32.sub
   local.tee $4
   i32.const 48
   local.get $3
   i32.const 10
   i32.rem_u
   i32.add
   i32.store8
   local.get $6
   local.set $3
   local.get $3
   local.set $7
   local.get $7
   br_if $do-continue|3
  end
  local.get $4
  local.get $10
  i32.add
  local.set $4
  local.get $4
  local.tee $7
  i32.const 1
  i32.add
  local.set $4
  local.get $7
  i32.const 41
  i32.store8
  i32.const 0
  local.get $4
  i32.const 8
  i32.sub
  i32.store offset=4
  i32.const 2
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/bindings/wasi_snapshot_preview1/fd_write
  drop
  i32.const 255
  call $~lib/bindings/wasi_snapshot_preview1/proc_exit
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $wasi/abort/test (; 8 ;)
  i32.const 0
  i32.eqz
  if
   i32.const 32
   i32.const 80
   i32.const 4
   i32.const 2
   call $~lib/bindings/wasi/abort
   unreachable
  end
 )
 (func $~start (; 9 ;)
  nop
 )
)
