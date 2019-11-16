(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $NullPointerException (func (param i32)))
 (memory $0 1)
 (data (i32.const 8) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00n\00u\00l\00l\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00f\00u\00n\00c\00t\00i\00o\00n\00")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $features/exception-handling/testNullable~anonymous|0)
 (global $~lib/argc (mut i32) (i32.const 0))
 (event $NullPointerException (attr 0) (param i32))
 (export "memory" (memory $0))
 (export "testNullFunction" (func $features/exception-handling/testNullFunction))
 (func $features/exception-handling/testNullable~anonymous|0 (; 0 ;) (type $FUNCSIG$v)
  nop
 )
 (func $features/exception-handling/testNullable (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if
   i32.const 1
   return
  else
   i32.const 0
   return
  end
  unreachable
 )
 (func $features/exception-handling/testNullFunction (; 2 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  call $features/exception-handling/testNullable
  local.set $0
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$v)
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  i32.const 24
  throw $NullPointerException
 )
)
