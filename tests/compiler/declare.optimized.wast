(module
 (type $v (func))
 (import "env" "externalFunc" (func $declare/externalFunc))
 (import "external" "externalFunc" (func $declare/external.externalFunc))
 (memory $0 1)
 (export "test" (func $declare/test))
 (export "memory" (memory $0))
 (func $declare/test (; 2 ;) (type $v)
  ;;@ declare.ts:11:2
  (call $declare/externalFunc)
  ;;@ declare.ts:13:11
  (call $declare/external.externalFunc)
 )
)
