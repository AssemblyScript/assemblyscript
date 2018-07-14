(module
 (type $v (func))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 0)
 (export "foo" (func $inlining-recursive/foo))
 (export "memory" (memory $0))
 (func $inlining-recursive/foo (; 0 ;) (type $v)
  (block $inlining-recursive/foo|inlined.0
   (call $inlining-recursive/foo)
  )
 )
)
