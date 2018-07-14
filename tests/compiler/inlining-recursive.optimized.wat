(module
 (type $v (func))
 (memory $0 0)
 (export "foo" (func $inlining-recursive/foo))
 (export "memory" (memory $0))
 (func $inlining-recursive/foo (; 0 ;) (type $v)
  (call $inlining-recursive/foo)
 )
)
