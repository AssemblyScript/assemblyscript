(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\03\00\00\00\08\00\00\00 ")
 (data (i32.const 1068) ",")
 (data (i32.const 1080) "\01\00\00\00\18\00\00\00t\00a\00b\00l\00e\00b\00a\00s\00e\00.\00t\00s")
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 17500))
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1116
  i32.lt_s
  if
   i32.const 17520
   i32.const 17568
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
  i32.const 32
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 6
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
