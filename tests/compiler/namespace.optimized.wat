(module
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (global $namespace/Outer.Inner.anotherVar (mut i32) (i32.const 0))
 (global $namespace/Outer.Inner.evenAnotherVar (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $namespace/Outer.Inner.anotherVar
  i32.const 1
  global.set $namespace/Outer.Inner.evenAnotherVar
 )
 (func $null (; 1 ;) (type $FUNCSIG$v)
  nop
 )
)
