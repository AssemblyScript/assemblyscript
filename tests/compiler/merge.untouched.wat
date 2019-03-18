(module
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $merge/globalType i32 (i32.const 2))
 (global $merge/globalType_test (mut i32) (i32.const 0))
 (global $merge/typeGlobal i32 (i32.const 3))
 (global $merge/typeGlobal_test (mut i32) (i32.const 0))
 (global $merge/namespaceType_test (mut i32) (i32.const 0))
 (global $merge/typeNamespace_test (mut i32) (i32.const 0))
 (global $merge/functionType_test (mut i32) (i32.const 0))
 (global $merge/typeFunction_test (mut i32) (i32.const 0))
 (global $merge/enumNamespace.val i32 (i32.const 1))
 (global $merge/namespaceEnum.val i32 (i32.const 2))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $merge/namespaceType.test (; 0 ;) (type $FUNCSIG$v)
  nop
 )
 (func $merge/typeNamespace.test (; 1 ;) (type $FUNCSIG$v)
  nop
 )
 (func $merge/functionType (; 2 ;) (type $FUNCSIG$v)
  nop
 )
 (func $merge/typeFunction (; 3 ;) (type $FUNCSIG$v)
  nop
 )
 (func $merge/classNamespace.test1 (; 4 ;) (type $FUNCSIG$v)
  nop
 )
 (func $merge/classNamespace.test2 (; 5 ;) (type $FUNCSIG$v)
  nop
 )
 (func $merge/namespaceClass.test1 (; 6 ;) (type $FUNCSIG$v)
  nop
 )
 (func $merge/namespaceClass.test2 (; 7 ;) (type $FUNCSIG$v)
  nop
 )
 (func $merge/functionNamespace (; 8 ;) (type $FUNCSIG$v)
  nop
 )
 (func $merge/functionNamespace.test (; 9 ;) (type $FUNCSIG$v)
  nop
 )
 (func $merge/namespaceFunction.test (; 10 ;) (type $FUNCSIG$v)
  nop
 )
 (func $merge/namespaceFunction (; 11 ;) (type $FUNCSIG$v)
  nop
 )
 (func $merge/enumNamespace.test (; 12 ;) (type $FUNCSIG$v)
  nop
 )
 (func $merge/namespaceEnum.test (; 13 ;) (type $FUNCSIG$v)
  nop
 )
 (func $merge/namespaceNamespace.test1 (; 14 ;) (type $FUNCSIG$v)
  nop
 )
 (func $merge/namespaceNamespace.test2 (; 15 ;) (type $FUNCSIG$v)
  nop
 )
 (func $start:merge (; 16 ;) (type $FUNCSIG$v)
  global.get $merge/globalType
  drop
  global.get $merge/typeGlobal
  drop
  call $merge/namespaceType.test
  call $merge/typeNamespace.test
  call $merge/functionType
  call $merge/typeFunction
  call $merge/classNamespace.test1
  call $merge/classNamespace.test2
  call $merge/namespaceClass.test1
  call $merge/namespaceClass.test2
  call $merge/functionNamespace
  call $merge/functionNamespace.test
  call $merge/namespaceFunction.test
  call $merge/namespaceFunction
  global.get $merge/enumNamespace.val
  drop
  call $merge/enumNamespace.test
  call $merge/namespaceEnum.test
  global.get $merge/namespaceEnum.val
  drop
  call $merge/namespaceNamespace.test1
  call $merge/namespaceNamespace.test2
 )
 (func $start (; 17 ;) (type $FUNCSIG$v)
  call $start:merge
 )
 (func $null (; 18 ;) (type $FUNCSIG$v)
 )
)
