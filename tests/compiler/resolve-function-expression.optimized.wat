(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00r\00e\00s\00o\00l\00v\00e\00-\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s")
 (data (i32.const 88) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 112) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\004\002")
 (table $0 4 funcref)
 (elem (i32.const 0) $null $start:resolve-function-expression~anonymous|0 $start:resolve-function-expression~anonymous|1 $start:resolve-function-expression~anonymous|2)
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $start:resolve-function-expression~anonymous|0 (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 40
  i32.add
 )
 (func $start:resolve-function-expression~anonymous|1 (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 41
  i32.add
 )
 (func $start:resolve-function-expression~anonymous|2 (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 42
  i32.add
 )
 (func $~lib/util/number/decimalCount32 (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/rt/stub/maybeGrowMemory (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/stub/__alloc (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $2
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $1
  i32.const 16
  local.get $1
  i32.const 16
  i32.gt_u
  select
  local.tee $3
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.tee $1
  local.get $3
  i32.store
  local.get $1
  i32.const -1
  i32.store offset=4
  local.get $1
  i32.const 1
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/util/number/utoa_simple<u32> (; 7 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $continue|0
   local.get $1
   i32.const 10
   i32.rem_u
   local.set $3
   local.get $1
   i32.const 10
   i32.div_u
   local.set $1
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $3
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   br_if $continue|0
  end
 )
 (func $~lib/util/number/itoa32 (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 104
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
 (func $~lib/string/String#get:length (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 10 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/string/String.__eq (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 128
  i32.eq
  if
   i32.const 1
   return
  end
  block $folding-inner0
   i32.const 0
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $1
   i32.const 128
   call $~lib/string/String#get:length
   i32.ne
   br_if $folding-inner0
   local.get $0
   i32.const 128
   local.get $1
   call $~lib/util/string/compareImpl
   i32.eqz
   return
  end
  i32.const 0
 )
 (func $start:resolve-function-expression (; 12 ;) (type $FUNCSIG$v)
  i32.const 1
  global.set $~lib/argc
  i32.const 2
  call $start:resolve-function-expression~anonymous|0
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 1
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  i32.const 1
  call $start:resolve-function-expression~anonymous|1
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 6
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 144
  global.set $~lib/rt/stub/startOffset
  i32.const 144
  global.set $~lib/rt/stub/offset
  i32.const 1
  global.set $~lib/argc
  i32.const 0
  call $start:resolve-function-expression~anonymous|2
  call $~lib/util/number/itoa32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 13 ;) (type $FUNCSIG$v)
  call $start:resolve-function-expression
 )
 (func $null (; 14 ;) (type $FUNCSIG$v)
  nop
 )
)
