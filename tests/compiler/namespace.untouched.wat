(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $namespace/Outer.Inner.aVar (mut i32) (i32.const 0))
 (global $namespace/Outer.Inner.anEnum.ONE i32 (i32.const 1))
 (global $namespace/Outer.Inner.anEnum.TWO i32 (i32.const 2))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $namespace/Outer.Inner.aFunc (; 0 ;) (type $FUNCSIG$i) (result i32)
  global.get $namespace/Outer.Inner.aVar
 )
 (func $namespace/Joined.anotherFunc (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 3
 )
 (func $start:namespace (; 2 ;) (type $FUNCSIG$v)
  global.get $namespace/Outer.Inner.aVar
  drop
  call $namespace/Outer.Inner.aFunc
  drop
  global.get $namespace/Outer.Inner.anEnum.ONE
  drop
  i32.const 2
  drop
  call $namespace/Joined.anotherFunc
  drop
 )
 (func $start (; 3 ;) (type $FUNCSIG$v)
  call $start:namespace
 )
 (func $null (; 4 ;) (type $FUNCSIG$v)
 )
)
