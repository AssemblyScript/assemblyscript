(module
 (type $0 (func))
 (type $1 (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $asi/i (mut i32) (i32.const 0))
 (global $asi/j (mut i32) (i32.const 7))
 (global $asi/k (mut i32) (i32.const 1))
 (global $~lib/memory/__data_end i32 (i32.const 44))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32812))
 (global $~lib/memory/__heap_base i32 (i32.const 32812))
 (memory $0 1)
 (data $0 (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\00a\00s\00i\00.\00t\00s\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:asi
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
 )
 (func $~start
  call $start:asi
 )
)
