(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00r\00e\00s\00o\00l\00v\00e\00-\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s")
 (data (i32.const 96) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 128) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\004\002")
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "memory" (memory $0))
 (start $~start)
 (func $~setArgumentsLength (; 1 ;) (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $start:resolve-function-expression~anonymous|1 (; 3 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 41
  i32.add
 )
 (func $start:resolve-function-expression~anonymous|2 (; 4 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 42
  i32.add
 )
 (func $~lib/util/number/decimalCount32 (; 5 ;) (param $0 i32) (result i32)
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
 )
 (func $~lib/rt/stub/maybeGrowMemory (; 6 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 42
  local.set $1
  i32.const 2
  local.set $5
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $4
  i32.const 16
  i32.add
  local.tee $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  local.tee $3
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
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
  local.get $0
  global.set $~lib/rt/stub/offset
  local.get $4
  i32.const 16
  i32.sub
  local.tee $0
  i32.const 16
  i32.store
  local.get $0
  i32.const 1
  i32.store offset=4
  local.get $0
  i32.const 1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $4
  local.set $0
  loop $do-continue|0
   local.get $1
   i32.const 10
   i32.rem_u
   local.set $2
   local.get $1
   i32.const 10
   i32.div_u
   local.set $1
   local.get $0
   local.get $5
   i32.const 1
   i32.sub
   local.tee $5
   i32.const 1
   i32.shl
   i32.add
   local.get $2
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   br_if $do-continue|0
  end
  local.get $4
 )
 (func $~lib/string/String#get:length (; 3 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 112
   return
  end
  local.get $0
  i32.const 31
  i32.shr_u
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
 (func $~lib/string/String#get:length (; 10 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 4 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 144
  local.set $3
  local.get $0
  i32.const 7
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 4
  i32.ge_u
  select
  if
   loop $do-continue|0
    local.get $0
    i64.load
    local.get $3
    i64.load
    i64.eq
    if
     local.get $0
     i32.const 8
     i32.add
     local.set $0
     local.get $3
     i32.const 8
     i32.add
     local.set $3
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 4
     i32.ge_u
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $1
   local.tee $2
   i32.const 1
   i32.sub
   local.set $1
   local.get $2
   if
    local.get $0
    i32.load16_u
    local.tee $2
    local.get $3
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $2
     local.get $4
     i32.sub
     return
    end
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~start (; 5 ;)
  (local $0 i32)
  (local $1 i32)
  i32.const 1
  global.set $~argumentsLength
  i32.const 1
  global.set $~argumentsLength
  i32.const 160
  global.set $~lib/rt/stub/startOffset
  i32.const 160
  global.set $~lib/rt/stub/offset
  i32.const 1
  global.set $~argumentsLength
  block $__inlined_func$~lib/string/String.__eq (result i32)
   i32.const 1
   call $~lib/util/number/itoa32
   local.tee $0
   i32.const 144
   i32.eq
   br_if $__inlined_func$~lib/string/String.__eq
   drop
   block $folding-inner0
    i32.const 0
    i32.const 1
    local.get $0
    select
    br_if $folding-inner0
    local.get $0
    call $~lib/string/String#get:length
    local.tee $1
    i32.const 144
    call $~lib/string/String#get:length
    i32.ne
    br_if $folding-inner0
    local.get $0
    local.get $1
    call $~lib/util/string/compareImpl
    i32.eqz
    br $__inlined_func$~lib/string/String.__eq
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
)
