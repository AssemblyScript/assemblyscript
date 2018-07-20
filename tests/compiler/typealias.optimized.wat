(module
 (type $ii (func (param i32) (result i32)))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "alias" (func $typealias/alias))
 (func $typealias/alias (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (get_local $0)
 )
)
