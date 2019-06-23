(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iij (func (param i32 i64) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (memory $0 1)
 (data (i32.const 8) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "operatorAccessLiteral" (func $resolve-operator/operatorAccessLiteral))
 (export "operatorAccess" (func $resolve-operator/operatorAccess))
 (export "OperatorOverloadingAccess" (func $resolve-operator/OperatorOverloadingAccess))
 (export "OperatorOverloadingSubclassAccess" (func $resolve-operator/OperatorOverloadingSubclassAccess))
 (start $start)
 (func $~lib/util/number/decimalCount32 (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/rt/stub/__alloc (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $2
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $5
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
  local.get $3
  i32.const 16
  i32.sub
  local.tee $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
 )
 (func $~lib/util/number/utoa_simple<u32> (; 2 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/util/number/utoa32 (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   return
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.tee $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  local.get $1
  call $~lib/util/number/utoa_simple<u32>
  local.get $2
 )
 (func $resolve-operator/operatorAccessLiteral (; 4 ;) (type $FUNCSIG$i) (result i32)
  i32.const 3
  call $~lib/util/number/utoa32
 )
 (func $resolve-operator/operatorAccess (; 5 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/util/number/decimalCount32
  local.tee $0
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $1
  i32.const 3
  local.get $0
  call $~lib/util/number/utoa_simple<u32>
  local.get $1
 )
 (func $resolve-operator/Container#constructor (; 6 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 3
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  local.get $1
  i64.store
  local.get $0
 )
 (func $resolve-operator/Container.add (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.add
  call $resolve-operator/Container#constructor
 )
 (func $resolve-operator/OperatorOverloadingAccess (; 8 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  i64.const 1
  call $resolve-operator/Container#constructor
  i32.const 0
  i64.const 2
  call $resolve-operator/Container#constructor
  call $resolve-operator/Container.add
  call $~lib/util/number/utoa32
 )
 (func $resolve-operator/SubContainer#constructor (; 9 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  i32.const 8
  i32.const 4
  call $~lib/rt/stub/__alloc
  local.get $0
  call $resolve-operator/Container#constructor
 )
 (func $resolve-operator/OperatorOverloadingSubclassAccess (; 10 ;) (type $FUNCSIG$i) (result i32)
  i64.const 1
  call $resolve-operator/SubContainer#constructor
  i64.const 2
  call $resolve-operator/SubContainer#constructor
  call $resolve-operator/Container.add
  call $~lib/util/number/utoa32
 )
 (func $start (; 11 ;) (type $FUNCSIG$v)
  i32.const 32
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
 )
 (func $null (; 12 ;) (type $FUNCSIG$v)
  nop
 )
)
