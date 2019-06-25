(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\n\00\00\00l\00o\00g\00i\00c\00a\00l\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $logical/i (mut i32) (i32.const 0))
 (global $logical/I (mut i64) (i64.const 0))
 (global $logical/f (mut f32) (f32.const 0))
 (global $logical/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:logical (; 1 ;) (type $FUNCSIG$v)
  i32.const 2
  global.set $logical/i
  global.get $logical/i
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.set $logical/i
  global.get $logical/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 15
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 2
  global.set $logical/I
  global.get $logical/I
  i64.const 2
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 20
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 1
  global.set $logical/I
  global.get $logical/I
  i64.const 1
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 23
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f32.const 2
  global.set $logical/f
  global.get $logical/f
  f32.const 2
  f32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 28
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f32.const 1
  global.set $logical/f
  global.get $logical/f
  f32.const 1
  f32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 31
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 2
  global.set $logical/F
  global.get $logical/F
  f64.const 2
  f64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 36
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1
  global.set $logical/F
  global.get $logical/F
  f64.const 1
  f64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 39
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:logical
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
