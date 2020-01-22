(module
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00c\00l\00a\00s\00s\00-\00s\00t\00a\00t\00i\00c\00-\00f\00u\00n\00c\00t\00i\00o\00n\00.\00t\00s\00")
 (table $0 2 funcref)
 (elem (i32.const 1) $class-static-function/Example.staticFunc)
 (global $~argumentsLength (mut i32) (i32.const 0))
 (export "__argumentsLength" (global $~argumentsLength))
 (export "memory" (memory $0))
 (start $~start)
 (func $class-static-function/Example.staticFunc (; 1 ;) (result i32)
  i32.const 42
 )
 (func $class-static-function/call (; 2 ;) (param $0 i32) (result i32)
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  call_indirect (type $none_=>_i32)
 )
 (func $start:class-static-function (; 3 ;)
  i32.const 1
  call $class-static-function/call
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (; 4 ;)
  call $start:class-static-function
 )
)
