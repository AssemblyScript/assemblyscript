(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "test" (func $class-overloading/test))
 (start $start)
 (func $~lib/rt/stub/__retain (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $class-overloading/Foo#baz (; 1 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__release (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $class-overloading/test (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $class-overloading/Foo#baz
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $start:class-overloading (; 4 ;) (type $FUNCSIG$v)
  i32.const 0
  call $class-overloading/test
 )
 (func $start (; 5 ;) (type $FUNCSIG$v)
  call $start:class-overloading
 )
 (func $null (; 6 ;) (type $FUNCSIG$v)
 )
)
