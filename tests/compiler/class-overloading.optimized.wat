(module
 (type $i32_=>_none (func (param i32)))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "test" (func $class-overloading/test))
 (func $class-overloading/test (; 0 ;) (param $0 i32)
  nop
 )
)
