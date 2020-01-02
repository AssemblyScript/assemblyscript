(module
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32)))
 (memory $0 0)
 (global $resolve-nested/Outer.InnerClass i32 (i32.const 4))
 (global $resolve-nested/Outer.Inner.EvenInnerClass i32 (i32.const 5))
 (export "memory" (memory $0))
 (export "Outer.InnerClass" (global $resolve-nested/Outer.InnerClass))
 (export "Outer.Inner.EvenInnerClass" (global $resolve-nested/Outer.Inner.EvenInnerClass))
 (export "Outer.Inner.evenInner" (func $resolve-nested/Outer.Inner.evenInner))
 (export "Outer.inner" (func $resolve-nested/Outer.inner))
 (export "outer" (func $resolve-nested/outer))
 (func $resolve-nested/Outer.Inner.evenInner (; 0 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  nop
 )
 (func $resolve-nested/Outer.inner (; 1 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  nop
 )
 (func $resolve-nested/outer (; 2 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  nop
 )
)
