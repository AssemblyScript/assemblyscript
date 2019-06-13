(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00i\00f\00.\00t\00s\00")
 (data (i32.const 40) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00E\00r\00r\00o\00r\00")
 (data (i32.const 72) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 88) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00e\00r\00r\00o\00r\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/error (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 116))
 (export "memory" (memory $0))
 (export "ifThenElse" (func $if/ifThenElse))
 (export "ifThen" (func $if/ifThen))
 (export "ifThenElseBlock" (func $if/ifThenElseBlock))
 (export "ifAlwaysReturns" (func $if/ifAlwaysReturns))
 (start $start)
 (func $if/ifThenElse (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if
   i32.const 1
   return
  else   
   i32.const 0
   return
  end
  unreachable
 )
 (func $if/ifThen (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $if/ifThenElseBlock (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if
   i32.const 1
   return
  else   
   i32.const 0
   return
  end
  unreachable
 )
 (func $start:if (; 4 ;) (type $FUNCSIG$v)
  i32.const 0
  call $if/ifThenElse
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 8
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $if/ifThenElse
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 9
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $if/ifThen
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $if/ifThen
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 18
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $if/ifThenElseBlock
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 30
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $if/ifThenElseBlock
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 31
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/stub/__retain (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__alloc (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $2
  local.get $0
  local.tee $3
  i32.const 1
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $5
  memory.size
  local.set $6
  local.get $5
  local.get $6
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $5
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $6
   local.tee $4
   local.get $3
   local.tee $7
   local.get $4
   local.get $7
   i32.gt_s
   select
   local.set $4
   local.get $4
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
  local.get $5
  global.set $~lib/rt/stub/offset
  local.get $2
  i32.const 16
  i32.sub
  local.set $8
  local.get $8
  local.get $1
  i32.store offset=8
  local.get $8
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__release (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/error/Error#constructor (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 56
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  i32.const 88
  call $~lib/rt/stub/__retain
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $if/ifAlwaysReturns (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if
   i32.const 1
   return
  else   
   i32.const 0
   i32.const 104
   call $~lib/error/Error#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  unreachable
 )
 (func $start (; 10 ;) (type $FUNCSIG$v)
  call $start:if
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
 )
 (func $null (; 11 ;) (type $FUNCSIG$v)
 )
)
