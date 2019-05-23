(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00i\00n\00s\00t\00a\00n\00c\00e\00o\00f\00.\00t\00s")
 (global $instanceof/an (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $start:instanceof (; 1 ;) (type $FUNCSIG$v)
  global.get $instanceof/an
  if
   i32.const 0
   i32.const 24
   i32.const 68
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $instanceof/an
  global.get $instanceof/an
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 71
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:instanceof
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
