(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "alias" (func $typealias/alias))
 (func $typealias/alias (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $null (; 1 ;) (type $FUNCSIG$v)
  nop
 )
)
