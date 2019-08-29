(module
 (type $FUNCSIG$aa (func (param anyref) (result anyref)))
 (type $FUNCSIG$v (func))
 (import "anyref" "external" (func $anyref/external (param anyref) (result anyref)))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "external" (func $anyref/external))
 (export "internal" (func $anyref/internal))
 (func $anyref/internal (; 1 ;) (type $FUNCSIG$aa) (param $0 anyref) (result anyref)
  local.get $0
 )
 (func $null (; 2 ;) (type $FUNCSIG$v)
  nop
 )
)
