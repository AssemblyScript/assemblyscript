(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $scoped/aGlobal (mut i32) (i32.const 1))
 (global $scoped/aConstant i32 (i32.const 3))
 (global $scoped/aStartFunctionLocal (mut i32) (i32.const 2))
 (export "memory" (memory $0))
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
   loop $loop|0
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
    br $loop|0
   end
   unreachable
  end
  block $break|1
   i32.const 0
   local.set $1
   loop $loop|1
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
    br $loop|1
   end
   unreachable
  end
  i64.const 5
  local.set $2
  f32.const 10
  local.set $3
  i32.const 42
  call $scoped/fn
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:scoped
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
 )
)
