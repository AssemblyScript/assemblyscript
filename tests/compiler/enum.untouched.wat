(module
 (type $i (func (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $enum/Implicit.ZERO i32 (i32.const 0))
 (global $enum/Implicit.ONE i32 (i32.const 1))
 (global $enum/Implicit.TWO i32 (i32.const 2))
 (global $enum/Implicit.THREE i32 (i32.const 3))
 (global $enum/Explicit.ZERO i32 (i32.const 0))
 (global $enum/Explicit.ONE i32 (i32.const 1))
 (global $enum/Explicit.TWO i32 (i32.const 2))
 (global $enum/Explicit.THREE i32 (i32.const 3))
 (global $enum/Mixed.ZERO i32 (i32.const 0))
 (global $enum/Mixed.ONE i32 (i32.const 1))
 (global $enum/Mixed.THREE i32 (i32.const 3))
 (global $enum/Mixed.FOUR i32 (i32.const 4))
 (global $enum/NonConstant.ZERO (mut i32) (i32.const 0))
 (global $enum/NonConstant.ONE (mut i32) (i32.const 0))
 (global $enum/SelfReference.ZERO i32 (i32.const 0))
 (global $enum/SelfReference.ONE i32 (i32.const 1))
 (global $enum/enumType (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "Implicit.ZERO" (global $enum/Implicit.ZERO))
 (export "Implicit.ONE" (global $enum/Implicit.ONE))
 (export "Implicit.TWO" (global $enum/Implicit.TWO))
 (export "Implicit.THREE" (global $enum/Implicit.THREE))
 (export "Explicit.ZERO" (global $enum/Explicit.ZERO))
 (export "Explicit.ONE" (global $enum/Explicit.ONE))
 (export "Explicit.TWO" (global $enum/Explicit.TWO))
 (export "Explicit.THREE" (global $enum/Explicit.THREE))
 (export "Mixed.ZERO" (global $enum/Mixed.ZERO))
 (export "Mixed.ONE" (global $enum/Mixed.ONE))
 (export "Mixed.THREE" (global $enum/Mixed.THREE))
 (export "Mixed.FOUR" (global $enum/Mixed.FOUR))
 (export "SelfReference.ZERO" (global $enum/SelfReference.ZERO))
 (export "SelfReference.ONE" (global $enum/SelfReference.ONE))
 (start $start)
 (func $enum/getZero (; 0 ;) (type $i) (result i32)
  i32.const 0
 )
 (func $start (; 1 ;) (type $v)
  call $enum/getZero
  set_global $enum/NonConstant.ZERO
  call $enum/getZero
  i32.const 1
  i32.add
  set_global $enum/NonConstant.ONE
  get_global $enum/NonConstant.ZERO
  drop
  get_global $enum/NonConstant.ONE
  drop
 )
 (func $null (; 2 ;) (type $v)
 )
)
