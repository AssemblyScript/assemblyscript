(module
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "test" (func $ternary/test))
 (func $ternary/test (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  local.get $0
  select
 )
)
