(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00s\00t\00a\00t\00i\00c\00-\00t\00h\00i\00s\00.\00t\00s")
 (global $static-this/Foo.bar i32 (i32.const 42))
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 1 ;) (type $FUNCSIG$v)
  global.get $static-this/Foo.bar
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 8
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $null (; 2 ;) (type $FUNCSIG$v)
  nop
 )
)
