(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
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
 (export "memory" (memory $0))
 (start $~start)
 (func $merge/namespaceType.test (; 0 ;)
  nop
 )
 (func $merge/typeNamespace.test (; 1 ;)
  nop
 )
 (func $merge/functionType (; 2 ;)
  nop
 )
 (func $merge/typeFunction (; 3 ;)
  nop
 )
 (func $merge/classNamespace.test1 (; 4 ;)
  nop
 )
 (func $merge/classNamespace.test2 (; 5 ;)
  nop
 )
 (func $merge/namespaceClass.test1 (; 6 ;)
  nop
 )
 (func $merge/namespaceClass.test2 (; 7 ;)
  nop
 )
 (func $merge/functionNamespace (; 8 ;)
  nop
 )
 (func $merge/functionNamespace.test (; 9 ;)
  nop
 )
 (func $merge/namespaceFunction.test (; 10 ;)
  nop
 )
 (func $merge/namespaceFunction (; 11 ;)
  nop
 )
 (func $merge/enumNamespace.test (; 12 ;)
  nop
 )
 (func $merge/namespaceEnum.test (; 13 ;)
  nop
 )
 (func $merge/namespaceNamespace.test1 (; 14 ;)
  nop
 )
 (func $merge/namespaceNamespace.test2 (; 15 ;)
  nop
 )
 (func $start:merge (; 16 ;)
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
 (func $~start (; 17 ;)
  call $start:merge
 )
)
