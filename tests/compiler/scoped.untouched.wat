(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (global $scoped/aGlobal (mut i32) (i32.const 1))
 (global $scoped/aConstant i32 (i32.const 3))
 (global $scoped/aStartFunctionLocal (mut i32) (i32.const 2))
 (export "memory" (memory $0))
 (start $~start)
 (func $scoped/fn (param $0 i32)
  (local $1 i32)
  i32.const 0
  local.set $1
  local.get $0
  local.set $1
 )
 (func $start:scoped
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 f32)
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   i32.const 1
   i32.lt_s
   local.set $1
   local.get $1
   if
    nop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   i32.const 1
   i32.lt_s
   local.set $2
   local.get $2
   if
    local.get $1
    drop
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  i64.const 5
  local.set $3
  f32.const 10
  local.set $4
  i32.const 42
  call $scoped/fn
 )
 (func $~start
  call $start:scoped
 )
)
