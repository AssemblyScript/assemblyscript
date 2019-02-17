(module
 (type $_ (func))
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
 (global $merge/enumNamespace.val (mut i32) (i32.const 1))
 (global $merge/namespaceEnum.val (mut i32) (i32.const 2))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $merge/namespaceType.test (; 0 ;) (type $_)
  nop
 )
 (func $merge/typeNamespace.test (; 1 ;) (type $_)
  nop
 )
 (func $merge/functionType (; 2 ;) (type $_)
  nop
 )
 (func $merge/typeFunction (; 3 ;) (type $_)
  nop
 )
 (func $merge/classNamespace.test1 (; 4 ;) (type $_)
  nop
 )
 (func $merge/classNamespace.test2 (; 5 ;) (type $_)
  nop
 )
 (func $merge/namespaceClass.test1 (; 6 ;) (type $_)
  nop
 )
 (func $merge/namespaceClass.test2 (; 7 ;) (type $_)
  nop
 )
 (func $merge/functionNamespace (; 8 ;) (type $_)
  nop
 )
 (func $merge/functionNamespace.test (; 9 ;) (type $_)
  nop
 )
 (func $merge/namespaceFunction.test (; 10 ;) (type $_)
  nop
 )
 (func $merge/namespaceFunction (; 11 ;) (type $_)
  nop
 )
 (func $merge/enumNamespace.test (; 12 ;) (type $_)
  nop
 )
 (func $merge/namespaceEnum.test (; 13 ;) (type $_)
  nop
 )
 (func $merge/namespaceNamespace.test1 (; 14 ;) (type $_)
  nop
 )
 (func $merge/namespaceNamespace.test2 (; 15 ;) (type $_)
  nop
 )
 (func $start:merge (; 16 ;) (type $_)
  nop
  global.get $merge/globalType
  drop
  nop
  global.get $merge/typeGlobal
  drop
  nop
  call $merge/namespaceType.test
  nop
  call $merge/typeNamespace.test
  nop
  call $merge/functionType
  nop
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
 (func $start (; 17 ;) (type $_)
  call $start:merge
 )
 (func $null (; 18 ;) (type $_)
 )
)
