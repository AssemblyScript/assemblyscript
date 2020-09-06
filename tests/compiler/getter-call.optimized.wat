(module
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 1024) "\08\00\00\00\01\00\00\00\04\00\00\00\08\00\00\00\01")
 (table $0 2 funcref)
 (elem (i32.const 1) $getter-call/C#get:x~anonymous|0)
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "test" (func $getter-call/test))
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
 (func $getter-call/C#get:x~anonymous|0 (result i32)
  i32.const 42
 )
 (func $getter-call/test (result i32)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/rt/stub/__alloc
  drop
  i32.const 8
  i32.const 4
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 1040
  i32.load
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.load
  call_indirect (type $none_=>_i32)
 )
 (func $~start
  i32.const 1056
  global.set $~lib/rt/stub/offset
 )
)
