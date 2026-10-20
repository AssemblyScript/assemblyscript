(module
 (type $0 (func))
 (type $1 (func (result i32)))
 (type $2 (func (param i32 i32 i32 i32)))
 (type $3 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $asi/i (mut i32) (i32.const 0))
 (global $asi/j (mut i32) (i32.const 7))
 (global $asi/k (mut i32) (i32.const 1))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $asi/value (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 76))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32844))
 (global $~lib/memory/__heap_base i32 (i32.const 32844))
 (memory $0 1)
 (data $0 (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\00a\00s\00i\00.\00t\00s\00")
 (data $1 (i32.const 44) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $start:asi~anonymous|0)
 (export "memory" (memory $0))
 (start $~start)
 (func $start:asi~anonymous|0 (result i32)
  i32.const 42
 )
 (func $asi/b (param $x i32) (result i32)
  local.get $x
  return
 )
 (func $~start
  call $start:asi
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 32864
   i32.const 32912
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:asi
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $asi/j
  global.set $asi/i
  global.get $asi/k
  i32.const 1
  i32.add
  global.set $asi/k
  global.get $asi/i
  i32.const 7
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
  global.get $asi/k
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $~argumentsLength
  i32.const 64
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $asi/b
  i32.load
  call_indirect (type $1)
  global.set $asi/value
  global.get $asi/value
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 16
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
