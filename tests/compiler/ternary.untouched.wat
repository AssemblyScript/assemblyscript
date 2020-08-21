(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (global $ternary/a (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "test" (func $ternary/test))
 (start $~start)
 (func $start:ternary
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  global.set $ternary/a
  i32.const 1
  global.set $ternary/a
  i32.const 1
  global.set $ternary/a
 )
 (func $ternary/test (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $1
  else
   local.get $2
  end
 )
 (func $~start
  call $start:ternary
 )
)
