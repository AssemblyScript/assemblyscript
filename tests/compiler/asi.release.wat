(module
 (type $0 (func))
 (type $1 (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $asi/k (mut i32) (i32.const 1))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02\00\00\00\0c\00\00\00a\00s\00i\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
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
 )
)
