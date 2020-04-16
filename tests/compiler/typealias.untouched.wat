(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (export "memory" (memory $0))
 (export "alias" (func $typealias/alias))
 (func $typealias/alias (param $0 i32) (result i32)
  local.get $0
 )
)
