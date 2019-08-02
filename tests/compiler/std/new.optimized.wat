(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (memory $0 0)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $std/new/aClass (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/rt/stub/__alloc (; 0 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $1
  i32.const 23
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
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
  local.get $1
  i32.const 16
  i32.sub
  local.tee $0
  i32.const 3
  i32.store offset=8
  local.get $0
  i32.const 8
  i32.store offset=12
  local.get $1
 )
 (func $std/new/AClass#constructor (; 1 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  f32.const 2
  f32.store offset=4
  i32.const 0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  local.get $0
  f32.const 3
  f32.store offset=4
  local.get $0
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  i32.const 16
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  call $std/new/AClass#constructor
  global.set $std/new/aClass
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
