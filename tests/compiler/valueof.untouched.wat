(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00v\00a\00l\00u\00e\00o\00f\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (start $start)
 (func $start:valueof (; 1 ;) (type $FUNCSIG$v)
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 2
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 3
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 1
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
  i32.const 1
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
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 9
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
   i32.const 10
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 13
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
   i32.const 14
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 18
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 21
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 24
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 25
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 1
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
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:valueof
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
 )
)
