(module
 (type $i (func (result i32)))
 (type $_ (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $namespace/Outer.Inner.aVar (mut i32) (i32.const 0))
 (global $namespace/Outer.Inner.anEnum.ONE i32 (i32.const 1))
 (global $namespace/Outer.Inner.anEnum.TWO i32 (i32.const 2))
 (global $namespace/Joined.THREE i32 (i32.const 3))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $namespace/Outer.Inner.aFunc (; 0 ;) (type $i) (result i32)
  global.get $namespace/Outer.Inner.aVar
 )
 (func $namespace/Joined.anotherFunc (; 1 ;) (type $i) (result i32)
  global.get $namespace/Joined.THREE
 )
 (func $start:namespace (; 2 ;) (type $_)
  global.get $namespace/Outer.Inner.aVar
  drop
  call $namespace/Outer.Inner.aFunc
  drop
  global.get $namespace/Outer.Inner.anEnum.ONE
  drop
  call $namespace/Joined.anotherFunc
  drop
 )
 (func $start (; 3 ;) (type $_)
  call $start:namespace
 )
 (func $null (; 4 ;) (type $_)
 )
)
