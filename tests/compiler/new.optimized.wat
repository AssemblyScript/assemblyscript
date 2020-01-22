(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (global $new/ref (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $new/gen (mut i32) (i32.const 0))
 (global $new/ref2 (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/maybeGrowMemory (; 0 ;) (param $0 i32)
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
 (func $~lib/rt/stub/__alloc (; 1 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $2
  i32.const 16
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.tee $1
  i32.const 16
  i32.store
  local.get $1
  i32.const 1
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $2
 )
 (func $start:new (; 2 ;)
  i32.const 16
  global.set $~lib/rt/stub/startOffset
  i32.const 16
  global.set $~lib/rt/stub/offset
  i32.const 3
  call $~lib/rt/stub/__alloc
  global.set $new/ref
  i32.const 3
  call $~lib/rt/stub/__alloc
  global.set $new/ref
  i32.const 3
  call $~lib/rt/stub/__alloc
  global.set $new/ref
  i32.const 4
  call $~lib/rt/stub/__alloc
  global.set $new/gen
  i32.const 4
  call $~lib/rt/stub/__alloc
  global.set $new/gen
  i32.const 5
  call $~lib/rt/stub/__alloc
  global.set $new/ref2
  i32.const 5
  call $~lib/rt/stub/__alloc
  global.set $new/ref2
  i32.const 5
  call $~lib/rt/stub/__alloc
  global.set $new/ref2
 )
 (func $~start (; 3 ;)
  call $start:new
 )
)
