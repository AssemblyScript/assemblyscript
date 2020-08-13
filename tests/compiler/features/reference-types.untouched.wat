(module
 (type $externref_=>_externref (func (param externref) (result externref)))
 (import "reference-types" "external" (func $features/reference-types/external (param externref) (result externref)))
 (memory $0 0)
 (table $0 1 funcref)
 (export "memory" (memory $0))
 (export "external" (func $features/reference-types/external))
 (export "internal" (func $features/reference-types/internal))
 (func $features/reference-types/internal (param $0 externref) (result externref)
  (local $1 externref)
  (local $2 externref)
  (local $3 externref)
  local.get $0
  call $features/reference-types/external
  local.set $1
  local.get $1
  call $features/reference-types/external
  local.set $2
  local.get $2
  call $features/reference-types/external
  local.set $3
  local.get $3
 )
)
