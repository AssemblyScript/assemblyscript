(module
 (type $i (func (result i32)))
 (type $i_ (func (param i32)))
 (type $_ (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $resolve-nested/a i32 (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "a" (global $resolve-nested/a))
 (export "b" (func $resolve-nested/b))
 (export "c" (func $resolve-nested/c))
 (export "Wrapped.e" (func $resolve-nested/c))
 (func $resolve-nested/b (; 0 ;) (type $i) (result i32)
  i32.const 0
 )
 (func $resolve-nested/c (; 1 ;) (type $i_) (param $0 i32)
  nop
 )
 (func $null (; 2 ;) (type $_)
  nop
 )
)
