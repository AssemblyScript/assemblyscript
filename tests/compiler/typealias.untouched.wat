(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "alias" (func $typealias/alias))
 (func $typealias/alias (; 0 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $null (; 1 ;)
  unreachable
 )
)
