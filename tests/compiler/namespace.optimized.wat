(module
 (type $i (func (result i32)))
 (type $v (func))
 (global $namespace/Outer.Inner.aVar (mut i32) (i32.const 0))
 (memory $0 0)
 (export "memory" (memory $0))
 (start $start)
 (func $namespace/Outer.Inner.aFunc (; 0 ;) (; has Stack IR ;) (type $i) (result i32)
  (get_global $namespace/Outer.Inner.aVar)
 )
 (func $namespace/Joined.anotherFunc (; 1 ;) (; has Stack IR ;) (type $i) (result i32)
  (i32.const 3)
 )
 (func $start (; 2 ;) (; has Stack IR ;) (type $v)
  (drop
   (call $namespace/Outer.Inner.aFunc)
  )
  (drop
   (call $namespace/Joined.anotherFunc)
  )
 )
)
