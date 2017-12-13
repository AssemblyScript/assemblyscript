(module
 (type $v (func))
 (memory $0 1)
 (export "test" (func $namespace/test))
 (export "memory" (memory $0))
 (func $namespace/test (; 0 ;) (type $v)
  (block $__inlined_func$namespace/Outer.Inner.aFunc
   (nop)
  )
 )
)
