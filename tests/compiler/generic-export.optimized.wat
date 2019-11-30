(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (global $generic-export/okVariable i32 (i32.const 1))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $generic-export/OkClass i32 (i32.const 4))
 (export "memory" (memory $0))
 (export "genericExample<i32>" (func $generic-export/okFunction))
 (export "okFunction" (func $generic-export/okFunction))
 (export "OkClass" (global $generic-export/OkClass))
 (export "OkClass#one" (func $generic-export/OkClass#one))
 (export "okVariable" (global $generic-export/okVariable))
 (export "functionThatUsesGenericFunction" (func $generic-export/functionThatUsesGenericFunction))
 (start $start)
 (func $~lib/rt/stub/maybeGrowMemory (; 0 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/stub/__alloc (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  local.tee $4
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $3
  i32.const 16
  i32.sub
  local.tee $2
  local.get $4
  i32.store
  local.get $2
  i32.const -1
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
 )
 (func $~lib/rt/__allocArray (; 2 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 3
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 8
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 8
  i32.store offset=8
  local.get $0
  i32.const 2
  i32.store offset=12
  local.get $0
 )
 (func $generic-export/okFunction (; 3 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/rt/__allocArray
  local.tee $2
  i32.load offset=4
  local.tee $3
  local.get $0
  i32.store
  local.get $3
  local.get $1
  i32.store offset=4
  local.get $2
 )
 (func $generic-export/OkClass#one (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
 )
 (func $generic-export/functionThatUsesGenericFunction (; 5 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  i32.const 1
  call $generic-export/okFunction
 )
 (func $start (; 6 ;) (type $FUNCSIG$v)
  i32.const 16
  global.set $~lib/rt/stub/startOffset
  i32.const 16
  global.set $~lib/rt/stub/offset
 )
 (func $null (; 7 ;) (type $FUNCSIG$v)
  nop
 )
)
