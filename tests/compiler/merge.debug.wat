(module
 (type $none_=>_none (func_subtype func))
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
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $merge/namespaceType.test (type $none_=>_none)
  nop
 )
 (func $merge/typeNamespace.test (type $none_=>_none)
  nop
 )
 (func $merge/functionType (type $none_=>_none)
  nop
 )
 (func $merge/typeFunction (type $none_=>_none)
  nop
 )
 (func $merge/classNamespace.test1 (type $none_=>_none)
  nop
 )
 (func $merge/classNamespace.test2 (type $none_=>_none)
  nop
 )
 (func $merge/namespaceClass.test1 (type $none_=>_none)
  nop
 )
 (func $merge/namespaceClass.test2 (type $none_=>_none)
  nop
 )
 (func $merge/functionNamespace (type $none_=>_none)
  nop
 )
 (func $merge/functionNamespace.test (type $none_=>_none)
  nop
 )
 (func $merge/namespaceFunction.test (type $none_=>_none)
  nop
 )
 (func $merge/namespaceFunction (type $none_=>_none)
  nop
 )
 (func $merge/enumNamespace.test (type $none_=>_none)
  nop
 )
 (func $merge/namespaceEnum.test (type $none_=>_none)
  nop
 )
 (func $merge/namespaceNamespace.test1 (type $none_=>_none)
  nop
 )
 (func $merge/namespaceNamespace.test2 (type $none_=>_none)
  nop
 )
 (func $start:merge (type $none_=>_none)
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
 (func $~start (type $none_=>_none)
  call $start:merge
 )
)
