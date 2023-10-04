(module
 (type $none_=>_i64 (func (result i64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_none (func))
 (import "bigint-integration" "externalValue" (global $bigint-integration/externalValue i64))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "bigint-integration" "getExternalValue" (func $bigint-integration/getExternalValue (result i64)))
 (global $bigint-integration/internalValue i64 (i64.const 9007199254740991))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00*\00\00\00b\00i\00g\00i\00n\00t\00-\00i\00n\00t\00e\00g\00r\00a\00t\00i\00o\00n\00.\00t\00s")
 (export "internalValue" (global $bigint-integration/internalValue))
 (export "getInternalValue" (func $bigint-integration/getInternalValue))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $bigint-integration/getInternalValue (result i64)
  i64.const 9007199254740991
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  global.get $bigint-integration/externalValue
  i64.const 9007199254740991
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $bigint-integration/getExternalValue
  global.get $bigint-integration/externalValue
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 5
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
)
