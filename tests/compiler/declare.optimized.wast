(module
 (type $v (func))
 (import "env" "external" (func $declare/external))
 (memory $0 1)
 (export "external" (func $declare/external))
 (export "memory" (memory $0))
)
