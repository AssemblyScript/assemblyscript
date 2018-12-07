(module
 (type $iv (func (param i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $start)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $class-overloading/test))
 (func $class-overloading/test (; 0 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $start (; 1 ;) (type $v)
  nop
 )
)
