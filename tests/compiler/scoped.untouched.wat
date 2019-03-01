(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $scoped/aGlobal (mut i32) (i32.const 1))
 (global $scoped/aConstant i32 (i32.const 3))
 (global $scoped/aStartFunctionLocal (mut i32) (i32.const 2))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $scoped/fn (; 0 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  i32.const 0
  local.set $1
  local.get $0
  local.set $1
 )
 (func $start:scoped (; 1 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 f32)
  block $break|0
   i32.const 0
   local.set $0
   loop $repeat|0
    local.get $0
    i32.const 1
    i32.lt_s
    i32.eqz
    br_if $break|0
    nop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|1
   i32.const 0
   local.set $1
   loop $repeat|1
    local.get $1
    i32.const 1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $1
    drop
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  block
   i64.const 5
   local.set $2
   f32.const 10
   local.set $3
  end
  i32.const 42
  call $scoped/fn
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:scoped
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
 )
)
