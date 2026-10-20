(module
 (type $0 (func (result i32)))
 (type $1 (func (param i32 i32 i32 i32)))
 (type $2 (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $asi/k (mut i32) (i32.const 1))
 (global $asi/value (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33868))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02\00\00\00\0c\00\00\00a\00s\00i\00.\00t\00s")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\04\00\00\00\08\00\00\00\01")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $start:asi~anonymous|0)
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1100
  i32.lt_s
  if
   i32.const 33888
   i32.const 33936
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $asi/k
  i32.const 1
  i32.add
  global.set $asi/k
  global.get $asi/k
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1088
  i32.store
  i32.const 1088
  i32.load
  call_indirect (type $0)
  drop
  i32.const 42
  global.set $asi/value
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:asi~anonymous|0 (result i32)
  i32.const 42
 )
)
