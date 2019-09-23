(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00i\00n\00t\00e\00r\00f\00a\00c\00e\00.\00t\00s")
 (table $0 5 funcref)
 (elem (i32.const 0) $null $interface/AFoo#foo $interface/AFoo#foo $interface/AFoo#faa $interface/AFoo#faa)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $interface/aFoo (mut i32) (i32.const 0))
 (global $interface/sFoo (mut i32) (i32.const 0))
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
 (func $~lib/rt/stub/__alloc (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  i32.const -1
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.store offset=12
  local.get $2
 )
 (func $interface/passAnInterface (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 1
  i32.const 0
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  call $~virtual
  call_indirect (type $FUNCSIG$iii)
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 3
  i32.const 1
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  call $~virtual
  call_indirect (type $FUNCSIG$iiii)
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 38
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
  i32.const 3
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 41
  i32.store
  local.get $0
  global.set $interface/aFoo
  i32.const 4
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 41
  i32.store
  local.get $0
  global.set $interface/sFoo
  global.get $interface/aFoo
  call $interface/passAnInterface
  global.get $interface/sFoo
  call $interface/passAnInterface
 )
 (func $interface/AFoo#foo (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  i32.add
 )
 (func $interface/AFoo#faa (; 6 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  i32.add
 )
 (func $~virtual (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $block$2$break
   block $switch$1$case$6
    block $switch$1$case$3
     local.get $0
     br_table $switch$1$case$3 $switch$1$case$6 $block$2$break
    end
    local.get $1
    i32.const 3
    i32.eq
    if
     i32.const 1
     return
    else
     local.get $1
     i32.const 4
     i32.ne
     br_if $block$2$break
     i32.const 2
     return
    end
    unreachable
   end
   local.get $1
   i32.const 3
   i32.eq
   if
    i32.const 3
    return
   else
    local.get $1
    i32.const 4
    i32.eq
    if
     i32.const 4
     return
    end
   end
  end
  unreachable
 )
 (func $null (; 8 ;) (type $FUNCSIG$v)
  nop
 )
)
