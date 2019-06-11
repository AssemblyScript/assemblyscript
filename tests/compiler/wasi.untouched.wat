(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00w\00a\00s\00i\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/shared/target/Target.WASM32 i32 (i32.const 0))
 (global $~lib/shared/target/Target.WASM64 i32 (i32.const 1))
 (global $~lib/shared/target/Target.JS i32 (i32.const 2))
 (global $~lib/ASC_TARGET i32 (i32.const 0))
 (global $wasi/sig (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (start $start)
 (func $start:wasi (; 1 ;) (type $FUNCSIG$v)
  i32.const 0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 4
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 6
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 20
  i32.const 20
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i32.const 24
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 8
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 10
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 10
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i32.const 24
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 14
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  i32.const 32
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 18
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 19
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 20
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i32.const 24
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 21
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 24
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 25
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 20
  i32.const 20
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 26
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i32.const 24
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 27
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  i32.const 32
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 28
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 40
  i32.const 40
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 29
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 48
  i32.const 48
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 30
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 56
  i32.const 56
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 31
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 33
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 44
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 45
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 46
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i32.const 24
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 47
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  i32.const 32
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 48
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 40
  i32.const 40
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 49
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 48
  i32.const 48
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 50
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 56
  i32.const 56
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 51
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 53
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 54
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 55
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 20
  i32.const 20
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 56
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 58
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 60
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 61
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 9
  global.set $wasi/sig
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:wasi
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
 )
)
