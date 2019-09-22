(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00i\00n\00t\00e\00r\00f\00a\00c\00e\00.\00t\00s\00")
 (table $0 3 funcref)
 (elem (i32.const 0) $null $interface/AFoo#foo $interface/AFoo#faa)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $interface/aFoo (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 48))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/rt/stub/maybeGrowMemory (; 1 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  memory.size
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
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
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
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
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (; 2 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.set $2
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  i32.const 16
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  local.set $5
  local.get $2
  local.get $5
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.set $6
  local.get $6
  local.get $5
  i32.store
  local.get $6
  i32.const -1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $interface/AFoo#constructor (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 41
  i32.store
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $interface/passAnInterface (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 1
  call $interface/IFoo#foo
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 23
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 3
  call $interface/IFoo#faa
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 24
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $start:interface (; 7 ;) (type $FUNCSIG$v)
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
  i32.const 0
  call $interface/AFoo#constructor
  global.set $interface/aFoo
  global.get $interface/aFoo
  call $interface/passAnInterface
 )
 (func $start (; 8 ;) (type $FUNCSIG$v)
  call $start:interface
 )
 (func $interface/AFoo#foo (; 9 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  i32.add
 )
 (func $interface/AFoo#faa (; 10 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  i32.add
 )
 (func $interface/IFoo#foo (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 0
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  call $~virtual
  call_indirect (type $FUNCSIG$iii)
 )
 (func $interface/IFoo#faa (; 12 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  i32.const 1
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  call $~virtual
  call_indirect (type $FUNCSIG$iiii)
 )
 (func $~virtual (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $block$2$break
   block $switch$1$default
    block $switch$1$case$5
     block $switch$1$case$3
      local.get $0
      br_table $switch$1$case$3 $switch$1$case$5 $switch$1$default
     end
     block $block$4$break
      local.get $1
      i32.const 3
      i32.eq
      if
       br $block$4$break
      else
       unreachable
      end
      unreachable
     end
     i32.const 1
     return
    end
    block $block$6$break
     local.get $1
     i32.const 3
     i32.eq
     if
      br $block$6$break
     else
      unreachable
     end
     unreachable
    end
    i32.const 2
    return
   end
   unreachable
  end
  i32.const 0
  drop
  i32.const 0
 )
 (func $null (; 14 ;) (type $FUNCSIG$v)
 )
)
