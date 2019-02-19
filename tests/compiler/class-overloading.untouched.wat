(module
 (type $i_ (func (param i32)))
 (type $_ (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $class-overloading/test))
 (start $start)
 (func $class-overloading/Foo#baz (; 0 ;) (type $i_) (param $0 i32)
  nop
 )
 (func $class-overloading/test (; 1 ;) (type $i_) (param $0 i32)
  local.get $0
  call $class-overloading/Foo#baz
 )
 (func $start:class-overloading (; 2 ;) (type $_)
  i32.const 0
  call $class-overloading/test
 )
 (func $start (; 3 ;) (type $_)
  call $start:class-overloading
 )
 (func $null (; 4 ;) (type $_)
 )
)
