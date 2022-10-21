(module
 (type $none_=>_none (func_subtype func))
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 124))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 65660))
 (global $~lib/memory/__heap_base i32 (i32.const 65660))
 (memory $0 2)
 (data (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 44) "L\00\00\00\00\00\00\00\00\00\00\00\01\00\00\000\00\00\00c\00l\00a\00s\00s\00-\00s\00t\00a\00t\00i\00c\00-\00f\00u\00n\00c\00t\00i\00o\00n\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $class-static-function/Example.staticFunc)
 (export "memory" (memory $0))
 (start $~start)
 (func $class-static-function/Example.staticFunc (type $none_=>_i32) (result i32)
  i32.const 42
 )
 (func $class-static-function/call (type $i32_=>_i32) (param $func i32) (result i32)
  i32.const 0
  global.set $~argumentsLength
  local.get $func
  i32.load $0
  call_indirect $0 (type $none_=>_i32)
 )
 (func $~start (type $none_=>_none)
  call $start:class-static-function
 )
 (func $~stack_check (type $none_=>_none)
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 65680
   i32.const 65728
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:class-static-function (type $none_=>_none)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 32
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $class-static-function/call
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 11
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
