(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00i\00n\00t\00e\00r\00f\00a\00c\00e\00.\00t\00s")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $interface/AFoo#foo)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $interface/aFoo (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/rt/stub/maybeGrowMemory (; 1 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/stub/__alloc (; 2 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $1
  i32.const 16
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $1
  i32.const 16
  i32.sub
  local.tee $0
  i32.const 16
  i32.store
  local.get $0
  i32.const -1
  i32.store offset=4
  local.get $0
  i32.const 3
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $1
 )
 (func $interface/passAnInterface (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  drop
  local.get $0
  i32.const 1
  call $interface/AFoo#foo
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 17
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 4 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 48
  global.set $~lib/rt/stub/startOffset
  i32.const 48
  global.set $~lib/rt/stub/offset
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 41
  i32.store
  local.get $0
  global.set $interface/aFoo
  global.get $interface/aFoo
  call $interface/passAnInterface
 )
 (func $interface/AFoo#foo (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  i32.add
 )
 (func $null (; 6 ;) (type $FUNCSIG$v)
  nop
 )
)
