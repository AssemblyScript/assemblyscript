(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00g\00e\00t\00t\00e\00r\00-\00s\00e\00t\00t\00e\00r\00.\00t\00s")
 (global $getter-setter/Foo._bar (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 1 ;)
  global.get $getter-setter/Foo._bar
  if
   i32.const 0
   i32.const 24
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $getter-setter/Foo._bar
  i32.const 2
  global.set $getter-setter/Foo._bar
 )
)
