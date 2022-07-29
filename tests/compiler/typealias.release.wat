(module
 (type $f32_=>_f64 (func (param f32) (result f64)))
 (memory $0 0)
 (export "alias" (func $typealias/alias))
 (export "memory" (memory $0))
 (func $typealias/alias (param $0 f32) (result f64)
  local.get $0
  f64.promote_f32
 )
)
