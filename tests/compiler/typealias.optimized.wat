(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $start)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "alias" (func $typealias/alias))
 (func $typealias/alias (; 0 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $start (; 1 ;) (type $v)
  nop
 )
)
