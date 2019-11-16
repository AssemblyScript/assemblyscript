(module
 (type $FUNCSIG$v (func))
 (type $NullPointerException (func (param i32)))
 (memory $0 1)
 (data (i32.const 8) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00n\00u\00l\00l\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00f\00u\00n\00c\00t\00i\00o\00n")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $features/exception-handling/testNullable~anonymous|0)
 (global $~lib/argc (mut i32) (i32.const 0))
 (event $NullPointerException (attr 0) (param i32))
 (export "memory" (memory $0))
 (export "testNullFunction" (func $features/exception-handling/testNullFunction))
 (func $features/exception-handling/testNullable~anonymous|0 (; 0 ;) (type $FUNCSIG$v)
  nop
 )
 (func $features/exception-handling/testNullFunction (; 1 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $~lib/argc
  call $null
 )
 (func $null (; 2 ;) (type $FUNCSIG$v)
  i32.const 24
  throw $NullPointerException
 )
)
