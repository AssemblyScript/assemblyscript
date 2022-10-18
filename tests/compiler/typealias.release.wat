(module
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (memory $0 0)
 (export "alias" (func $typealias/alias))
 (export "memory" (memory $0))
 (func $typealias/alias (type $i32_=>_i32) (param $0 i32) (result i32)
  local.get $0
 )
)
