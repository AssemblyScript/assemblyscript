(module
 (type $iv (func (param i32)))
 (type $v (func))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $class-overloading/test))
 (start $start)
 (func $class-overloading/Foo#baz (; 0 ;) (type $FUNCSIG$v)
  nop
 )
 (func $class-overloading/test (; 1 ;) (type $iv) (param $0 i32)
  call $class-overloading/Foo#baz
 )
 (func $start (; 2 ;) (type $v)
  i32.const 0
  call $class-overloading/test
 )
 (func $null (; 3 ;) (type $v)
  nop
 )
)
