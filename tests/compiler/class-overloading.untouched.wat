(module
 (type $iv (func (param i32)))
 (type $v (func))
 (memory $0 0 65535)
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $class-overloading/test))
 (start $start)
 (func $class-overloading/Foo#baz (; 0 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  nop
 )
 (func $class-overloading/test (; 1 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  get_local $0
  call $class-overloading/Foo#baz
 )
 (func $start (; 2 ;) (; has Stack IR ;) (type $v)
  i32.const 0
  call $class-overloading/test
 )
 (func $null (; 3 ;) (; has Stack IR ;) (type $v)
 )
)
