(module
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\03\00\00\00\08\00\00\00\01")
 (data (i32.const 1068) "L")
 (data (i32.const 1080) "\01\00\00\000\00\00\00c\00l\00a\00s\00s\00-\00s\00t\00a\00t\00i\00c\00-\00f\00u\00n\00c\00t\00i\00o\00n\00.\00t\00s")
 (table $0 2 funcref)
 (elem (i32.const 1) $class-static-function/Example.staticFunc)
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 17532))
 (export "memory" (memory $0))
 (start $~start)
 (func $class-static-function/Example.staticFunc (result i32)
  i32.const 42
 )
 (func $~start
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1148
  i32.lt_s
  if
   i32.const 17552
   i32.const 17600
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store
  i32.const 1056
  i32.load
  call_indirect $0 (type $none_=>_i32)
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 1088
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
