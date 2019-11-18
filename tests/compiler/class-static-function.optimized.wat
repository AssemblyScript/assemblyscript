(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00c\00l\00a\00s\00s\00-\00s\00t\00a\00t\00i\00c\00-\00f\00u\00n\00c\00t\00i\00o\00n\00.\00t\00s")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $class-static-function/Example.staticFunc)
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $class-static-function/Example.staticFunc (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 42
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $~lib/argc
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
