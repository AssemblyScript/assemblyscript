(module
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (global $namespace/Outer.outerVar (mut i32) (i32.const 1))
 (global $namespace/Outer.Inner.aVar (mut i32) (i32.const 0))
 (global $namespace/Outer.Inner.anotherVar (mut i32) (i32.const 0))
 (global $namespace/Outer.Inner.evenAnotherVar (mut i32) (i32.const 0))
 (global $namespace/Outer.Inner.anEnum.ONE i32 (i32.const 1))
 (global $namespace/Outer.Inner.anEnum.TWO i32 (i32.const 2))
 (export "memory" (memory $0))
 (start $~start)
 (func $namespace/Outer.Inner.aFunc (result i32)
  global.get $namespace/Outer.Inner.aVar
 )
 (func $namespace/Joined.anotherFunc (result i32)
  i32.const 3
 )
 (func $start:namespace
  global.get $namespace/Outer.Inner.aVar
  global.set $namespace/Outer.Inner.anotherVar
  global.get $namespace/Outer.outerVar
  global.set $namespace/Outer.Inner.evenAnotherVar
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
 (func $~start
  call $start:namespace
 )
)
