(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $start)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $class-overloading/test))
 (func $class-overloading/test (; 0 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $start (; 1 ;) (type $FUNCSIG$v)
  nop
 )
)
