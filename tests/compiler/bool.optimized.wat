(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00b\00o\00o\00l\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $start:bool (; 1 ;) (type $FUNCSIG$v)
  i32.const 2
  i32.const 1
  i32.xor
  i32.const 1
  i32.xor
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 2
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 2
  i64.const 0
  i64.ne
  i32.const 1
  i32.xor
  i32.const 1
  i32.xor
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 4
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 1
  i32.xor
  i32.const 1
  i32.xor
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 6
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 2
  i64.const 0
  i64.ne
  i32.const 1
  i32.xor
  i32.const 1
  i32.xor
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 8
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 2
  f32.const 0
  f32.ne
  i32.const 1
  i32.xor
  i32.const 1
  i32.xor
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 10
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 2
  f64.const 0
  f64.ne
  i32.const 1
  i32.xor
  i32.const 1
  i32.xor
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 1
  i32.xor
  i32.const 1
  i32.xor
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 14
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:bool
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
