(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "declare" "externalConstant" (global $declare/externalConstant i32))
 (import "declare" "my.externalConstant" (global $declare/my.externalConstant i32))
 (import "declare" "externalFunction" (func $declare/externalFunction))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "declare" "my.externalFunction" (func $declare/my.externalFunction))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00d\00e\00c\00l\00a\00r\00e\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16444))
 (global $~lib/memory/__heap_base i32 (i32.const 16444))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:declare
  call $declare/externalFunction
  global.get $declare/externalConstant
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 5
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $declare/my.externalFunction
  global.get $declare/my.externalConstant
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:declare
 )
)
