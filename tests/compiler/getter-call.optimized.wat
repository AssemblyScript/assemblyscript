(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 2 funcref)
 (elem (i32.const 0) $null $getter-call/C#get:x~anonymous|0)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "test" (func $getter-call/test))
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
  i32.const 16
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
  i32.const 0
  i32.store offset=12
  local.get $1
 )
 (func $getter-call/C#get:x~anonymous|0 (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 42
 )
 (func $getter-call/test (; 2 ;) (type $FUNCSIG$i) (result i32)
  call $~lib/rt/stub/__alloc
  drop
  i32.const 0
  global.set $~lib/argc
  call $getter-call/C#get:x~anonymous|0
 )
 (func $start (; 3 ;) (type $FUNCSIG$v)
  i32.const 16
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
 )
 (func $null (; 4 ;) (type $FUNCSIG$v)
  nop
 )
)
