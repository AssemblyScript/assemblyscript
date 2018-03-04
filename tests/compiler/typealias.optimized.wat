(module
 (type $ii (func (param i32) (result i32)))
 (memory $0 1)
 (export "alias" (func $typealias/alias))
 (export "memory" (memory $0))
 (func $typealias/alias (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (get_local $0)
 )
)
