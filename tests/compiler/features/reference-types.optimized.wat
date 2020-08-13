(module
 (type $externref_=>_externref (func (param externref) (result externref)))
 (import "reference-types" "external" (func $features/reference-types/external (param externref) (result externref)))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "external" (func $features/reference-types/external))
 (export "internal" (func $features/reference-types/internal))
 (func $features/reference-types/internal (param $0 externref) (result externref)
  local.get $0
  call $features/reference-types/external
  call $features/reference-types/external
  call $features/reference-types/external
 )
)
