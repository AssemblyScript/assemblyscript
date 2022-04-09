(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (export "alias" (func $typealias/alias))
 (export "memory" (memory $0))
 (func $typealias/alias (param $0 i32) (result i32)
  local.get $0
 )
)
