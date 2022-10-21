(module
 (type $none_=>_none (func_subtype func))
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $static-this/Foo.bar (mut i32) (i32.const 42))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 65596))
 (global $~lib/memory/__heap_base i32 (i32.const 65596))
 (memory $0 2)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00s\00t\00a\00t\00i\00c\00-\00t\00h\00i\00s\00.\00t\00s\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $static-this/Foo.getBar (type $none_=>_i32) (result i32)
  global.get $static-this/Foo.bar
 )
 (func $start:static-this (type $none_=>_none)
  call $static-this/Foo.getBar
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 8
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (type $none_=>_none)
  call $start:static-this
 )
)
