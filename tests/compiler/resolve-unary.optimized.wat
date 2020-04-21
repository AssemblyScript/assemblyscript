(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 1056) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00-\001")
 (data (i32.const 1088) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00r\00e\00s\00o\00l\00v\00e\00-\00u\00n\00a\00r\00y\00.\00t\00s")
 (data (i32.const 1136) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001")
 (data (i32.const 1168) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\002")
 (data (i32.const 1200) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e")
 (data (i32.const 1232) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 1264) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00-\002")
 (data (i32.const 1296) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00+")
 (data (i32.const 1328) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-")
 (data (i32.const 1360) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00!")
 (data (i32.const 1392) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00~")
 (data (i32.const 1424) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00+\00+\00i")
 (data (i32.const 1456) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00-\00-\00i")
 (data (i32.const 1488) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\00+\00+")
 (data (i32.const 1520) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\00-\00-")
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $resolve-unary/a (mut i32) (i32.const 1))
 (global $resolve-unary/b (mut i32) (i32.const 1))
 (global $resolve-unary/foo (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/__alloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $4
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
  local.tee $6
  i32.add
  local.tee $2
  memory.size
  local.tee $5
  i32.const 16
  i32.shl
  local.tee $3
  i32.gt_u
  if
   local.get $5
   local.get $2
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $5
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $2
  global.set $~lib/rt/stub/offset
  local.get $4
  i32.const 16
  i32.sub
  local.tee $2
  local.get $6
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
  local.get $4
 )
 (func $~lib/number/I32#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/util/number/itoa32
   local.get $0
   i32.eqz
   if
    i32.const 1040
    local.set $2
    br $__inlined_func$~lib/util/number/itoa32
   end
   local.get $0
   i32.const 31
   i32.shr_u
   local.tee $3
   if
    i32.const 0
    local.get $0
    i32.sub
    local.set $0
   end
   local.get $3
   local.get $0
   i32.const 10
   i32.ge_u
   i32.const 1
   i32.add
   local.get $0
   i32.const 10000
   i32.ge_u
   i32.const 3
   i32.add
   local.get $0
   i32.const 1000
   i32.ge_u
   i32.add
   local.get $0
   i32.const 100
   i32.lt_u
   select
   local.get $0
   i32.const 1000000
   i32.ge_u
   i32.const 6
   i32.add
   local.get $0
   i32.const 1000000000
   i32.ge_u
   i32.const 8
   i32.add
   local.get $0
   i32.const 100000000
   i32.ge_u
   i32.add
   local.get $0
   i32.const 10000000
   i32.lt_u
   select
   local.get $0
   i32.const 100000
   i32.lt_u
   select
   i32.add
   local.tee $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__alloc
   local.tee $2
   local.set $5
   loop $do-continue|0
    local.get $0
    i32.const 10
    i32.div_u
    local.get $5
    local.get $4
    i32.const 1
    i32.sub
    local.tee $4
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 10
    i32.rem_u
    i32.const 48
    i32.add
    i32.store16
    local.tee $0
    br_if $do-continue|0
   end
   local.get $3
   if
    local.get $2
    i32.const 45
    i32.store16
   end
  end
  local.get $2
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   loop $do-continue|0
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
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $2
   local.tee $3
   i32.const 1
   i32.sub
   local.set $2
   local.get $3
   if
    local.get $0
    i32.load16_u
    local.tee $3
    local.get $1
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $3
     local.get $4
     i32.sub
     return
    end
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:resolve-unary
  (local $0 i32)
  i32.const 1552
  global.set $~lib/rt/stub/offset
  i32.const -1
  call $~lib/number/I32#toString
  i32.const 1072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 2
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/number/I32#toString
  i32.const 1152
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 7
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.const 1
  i32.add
  global.set $resolve-unary/a
  global.get $resolve-unary/a
  call $~lib/number/I32#toString
  i32.const 1184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.const 1
  i32.sub
  global.set $resolve-unary/a
  global.get $resolve-unary/a
  call $~lib/number/I32#toString
  i32.const 1152
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 18
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1248
  i32.const 1216
  global.get $resolve-unary/a
  select
  i32.const 1248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1216
  i32.const 1248
  global.get $resolve-unary/a
  select
  i32.const 1216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 28
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.const -1
  i32.xor
  call $~lib/number/I32#toString
  i32.const 1280
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 33
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/b
  local.tee $0
  i32.const 1
  i32.add
  global.set $resolve-unary/b
  local.get $0
  call $~lib/number/I32#toString
  i32.const 1152
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/b
  local.tee $0
  i32.const 1
  i32.sub
  global.set $resolve-unary/b
  local.get $0
  call $~lib/number/I32#toString
  i32.const 1184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 46
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/rt/stub/__alloc
  global.set $resolve-unary/foo
  i32.const 1312
  i32.const 1312
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 91
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1344
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 96
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1376
  i32.const 1376
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 111
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1408
  i32.const 1408
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 116
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  local.tee $0
  global.set $resolve-unary/foo
  local.get $0
  global.get $resolve-unary/foo
  i32.ne
  if
   i32.const 0
   i32.const 1104
   i32.const 121
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  local.tee $0
  global.set $resolve-unary/foo
  local.get $0
  global.get $resolve-unary/foo
  i32.ne
  if
   i32.const 0
   i32.const 1104
   i32.const 126
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 4
  call $~lib/rt/stub/__alloc
  drop
  i32.const 1440
  i32.const 1440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 151
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1472
  i32.const 1472
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 156
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1504
  i32.const 1504
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 161
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1536
  i32.const 1536
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 166
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:resolve-unary
 )
)
