(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 48) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00-\001")
 (data (i32.const 80) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00r\00e\00s\00o\00l\00v\00e\00-\00u\00n\00a\00r\00y\00.\00t\00s")
 (data (i32.const 128) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001")
 (data (i32.const 160) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\002")
 (data (i32.const 192) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e")
 (data (i32.const 224) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 256) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00-\002")
 (data (i32.const 288) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00+")
 (data (i32.const 320) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-")
 (data (i32.const 352) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00!")
 (data (i32.const 384) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00~")
 (data (i32.const 416) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00+\00+\00i")
 (data (i32.const 448) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00-\00-\00i")
 (data (i32.const 480) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\00+\00+")
 (data (i32.const 512) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\00-\00-")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $resolve-unary/a (mut i32) (i32.const 1))
 (global $resolve-unary/b (mut i32) (i32.const 1))
 (global $resolve-unary/foo (mut i32) (i32.const 0))
 (global $resolve-unary/bar (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/util/number/decimalCount32 (; 1 ;) (param $0 i32) (result i32)
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
 (func $~lib/rt/stub/maybeGrowMemory (; 2 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  local.tee $1
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
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
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (; 3 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $3
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  i32.const 16
  local.get $2
  i32.const 16
  i32.gt_u
  select
  local.tee $4
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $3
  i32.const 16
  i32.sub
  local.tee $2
  local.get $4
  i32.store
  local.get $2
  i32.const 1
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
 )
 (func $~lib/util/number/utoa_simple<u32> (; 4 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $continue|0
   local.get $1
   i32.const 10
   i32.div_u
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store16
   local.tee $1
   br_if $continue|0
  end
 )
 (func $~lib/util/number/itoa32 (; 5 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 32
   return
  end
  local.get $0
  i32.const 0
  i32.lt_s
  local.tee $1
  if
   i32.const 0
   local.get $0
   i32.sub
   local.set $0
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.tee $3
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  local.get $3
  call $~lib/util/number/utoa_simple<u32>
  local.get $1
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  local.get $2
 )
 (func $~lib/string/String#get:length (; 6 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 7 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  i32.const 0
  local.get $2
  i32.const 4
  i32.ge_u
  select
  if
   loop $continue|0
    local.get $0
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $0
     i32.const 8
     i32.add
     local.set $0
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 4
     i32.sub
     local.tee $2
     i32.const 4
     i32.ge_u
     br_if $continue|0
    end
   end
  end
  loop $continue|1
   block $break|1
    local.get $2
    local.tee $3
    i32.const 1
    i32.sub
    local.set $2
    local.get $3
    i32.eqz
    br_if $break|1
    local.get $1
    i32.load16_u
    local.tee $3
    local.get $0
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $4
     local.get $3
     i32.sub
     return
    else
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $continue|1
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (; 8 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $2
   local.get $1
   call $~lib/string/String#get:length
   i32.ne
   br_if $folding-inner0
   local.get $0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   return
  end
  i32.const 0
 )
 (func $~lib/number/Bool#toString (; 9 ;) (param $0 i32) (result i32)
  i32.const 208
  i32.const 240
  local.get $0
  select
 )
 (func $start:resolve-unary (; 10 ;)
  (local $0 i32)
  i32.const 544
  global.set $~lib/rt/stub/startOffset
  i32.const 544
  global.set $~lib/rt/stub/offset
  i32.const -1
  call $~lib/util/number/itoa32
  i32.const 64
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 2
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/util/number/itoa32
  i32.const 144
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.const 1
  i32.add
  global.set $resolve-unary/a
  global.get $resolve-unary/a
  call $~lib/util/number/itoa32
  i32.const 176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.const 1
  i32.sub
  global.set $resolve-unary/a
  global.get $resolve-unary/a
  call $~lib/util/number/itoa32
  i32.const 144
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 18
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.eqz
  call $~lib/number/Bool#toString
  i32.const 240
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.eqz
  i32.eqz
  call $~lib/number/Bool#toString
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 28
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.const -1
  i32.xor
  call $~lib/util/number/itoa32
  i32.const 272
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 33
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/b
  local.tee $0
  i32.const 1
  i32.add
  global.set $resolve-unary/b
  local.get $0
  call $~lib/util/number/itoa32
  i32.const 144
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 41
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/b
  local.tee $0
  i32.const 1
  i32.sub
  global.set $resolve-unary/b
  local.get $0
  call $~lib/util/number/itoa32
  i32.const 176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 46
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/rt/stub/__alloc
  global.set $resolve-unary/foo
  i32.const 304
  i32.const 304
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 91
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 336
  i32.const 336
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 96
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 368
  i32.const 368
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 111
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 400
  i32.const 400
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 116
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  local.tee $0
  global.set $resolve-unary/foo
  global.get $resolve-unary/foo
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 96
   i32.const 121
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  local.tee $0
  global.set $resolve-unary/foo
  global.get $resolve-unary/foo
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 96
   i32.const 126
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 4
  call $~lib/rt/stub/__alloc
  global.set $resolve-unary/bar
  i32.const 432
  i32.const 432
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 151
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 464
  i32.const 464
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 156
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 496
  i32.const 496
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 161
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 528
  i32.const 528
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 166
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 11 ;)
  call $start:resolve-unary
 )
)
