(module
 (type $0 (func (param i32)))
 (type $1 (func (param i32 i32 i32 i32)))
 (type $2 (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $issues/2989/value (mut i32) (i32.const 0))
 (global $issues/2989/fn (mut i32) (i32.const 1056))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33916))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\04\00\00\00\08\00\00\00\01")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\04\00\00\00\08\00\00\00\02")
 (data $2 (i32.const 1100) ",")
 (data $2.1 (i32.const 1112) "\02\00\00\00\1c\00\00\00i\00s\00s\00u\00e\00s\00/\002\009\008\009\00.\00t\00s")
 (table $0 3 3 funcref)
 (elem $0 (i32.const 1) $issues/2989/logA $issues/2989/logB)
 (export "memory" (memory $0))
 (start $~start)
 (func $issues/2989/logA (param $0 i32)
  i32.const 100
  global.set $issues/2989/value
 )
 (func $issues/2989/logB (param $0 i32)
  i32.const 200
  global.set $issues/2989/value
 )
 (func $~start
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1148
  i32.lt_s
  if
   i32.const 33936
   i32.const 33984
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $issues/2989/fn
  local.tee $0
  i32.store
  i32.const 1088
  global.set $issues/2989/fn
  i32.const 42
  local.get $0
  i32.load
  call_indirect (type $0)
  global.get $issues/2989/value
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1120
   i32.const 20
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
