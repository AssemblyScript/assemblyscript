(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (memory $0 0)
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/__new (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/stub/offset
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.tee $5
  i32.const 28
  i32.add
  local.tee $1
  memory.size
  local.tee $3
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  i32.gt_u
  if
   local.get $3
   local.get $1
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $2
   local.get $3
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $1
  global.set $~lib/rt/stub/offset
  i32.const 28
  i32.store
  local.get $5
  i32.const 4
  i32.sub
  local.tee $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
 )
 (func $~start
  i32.const 1036
  global.set $~lib/rt/stub/offset
  i32.const 3
  call $~lib/rt/stub/__new
  i32.const 3
  call $~lib/rt/stub/__new
  i32.const 3
  call $~lib/rt/stub/__new
  i32.const 4
  call $~lib/rt/stub/__new
  i32.const 4
  call $~lib/rt/stub/__new
  i32.const 5
  call $~lib/rt/stub/__new
  i32.const 5
  call $~lib/rt/stub/__new
  i32.const 5
  call $~lib/rt/stub/__new
 )
)
