(module
 (type $0 (func (param i32)))
 (type $1 (func))
 (type $2 (func (param i32) (result i32)))
 (type $3 (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $issues/2989/value (mut i32) (i32.const 0))
 (global $issues/2989/fn (mut i32) (i32.const 32))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 124))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32892))
 (global $~lib/memory/__heap_base i32 (i32.const 32892))
 (memory $0 1)
 (data $0 (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data $1 (i32.const 44) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 76) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00i\00s\00s\00u\00e\00s\00/\002\009\008\009\00.\00t\00s\00")
 (table $0 3 3 funcref)
 (elem $0 (i32.const 1) $issues/2989/logA $issues/2989/logB)
 (export "memory" (memory $0))
 (start $~start)
 (func $issues/2989/logA (param $x i32)
  i32.const 100
  global.set $issues/2989/value
 )
 (func $issues/2989/logB (param $x i32)
  i32.const 200
  global.set $issues/2989/value
 )
 (func $issues/2989/foo (param $x i32) (result i32)
  i32.const 64
  global.set $issues/2989/fn
  local.get $x
  return
 )
 (func $start:issues/2989
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $issues/2989/fn
  local.tee $0
  i32.store
  i32.const 42
  call $issues/2989/foo
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.load
  call_indirect (type $0)
  global.get $issues/2989/value
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
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
 (func $~start
  call $start:issues/2989
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 32912
   i32.const 32960
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
)
