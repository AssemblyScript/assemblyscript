(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_i32 (func (result i32)))
 (memory $0 0)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "memory" (memory $0))
 (export "test" (func $getter-call/test))
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
 (func $~lib/rt/stub/__alloc (; 1 ;)
  (local $0 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $0
  i32.const 16
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $0
  i32.const 16
  i32.sub
  local.tee $0
  i32.const 16
  i32.store
  local.get $0
  i32.const 1
  i32.store offset=4
  local.get $0
  i32.const 3
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
 )
 (func $~setArgumentsLength (; 2 ;) (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $getter-call/test (; 3 ;) (result i32)
  call $~lib/rt/stub/__alloc
  i32.const 0
  global.set $~argumentsLength
  i32.const 42
 )
 (func $~start (; 4 ;)
  i32.const 16
  global.set $~lib/rt/stub/startOffset
  i32.const 16
  global.set $~lib/rt/stub/offset
 )
)
