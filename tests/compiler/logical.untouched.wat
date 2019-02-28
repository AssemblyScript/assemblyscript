(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\n\00\00\00l\00o\00g\00i\00c\00a\00l\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $logical/i (mut i32) (i32.const 0))
 (global $logical/I (mut i64) (i64.const 0))
 (global $logical/f (mut f32) (f32.const 0))
 (global $logical/F (mut f64) (f64.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 32))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:logical (; 1 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 f64)
  i32.const 0
  if (result i32)
   unreachable
  else   
   i32.const 0
  end
  drop
  f64.const 0
  f64.const 0
  f64.ne
  if (result f64)
   unreachable
  else   
   f64.const 0
  end
  drop
  i32.const 1
  if (result i32)
   i32.const 1
  else   
   unreachable
  end
  drop
  f64.const 1
  f64.const 0
  f64.ne
  if (result f64)
   f64.const 1
  else   
   unreachable
  end
  drop
  i32.const 1
  if (result i32)
   i32.const 2
  else   
   i32.const 1
  end
  local.tee $0
  if (result i32)
   local.get $0
  else   
   unreachable
  end
  drop
  f64.const 1
  f64.const 0
  f64.ne
  if (result f64)
   f64.const 2
  else   
   f64.const 1
  end
  local.tee $1
  f64.const 0
  f64.ne
  if (result f64)
   local.get $1
  else   
   unreachable
  end
  drop
  i32.const 1
  if (result i32)
   i32.const 2
  else   
   i32.const 1
  end
  global.set $logical/i
  global.get $logical/i
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  if (result i32)
   i32.const 0
  else   
   i32.const 1
  end
  global.set $logical/i
  global.get $logical/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 15
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 1
  i64.const 0
  i64.ne
  if (result i64)
   i64.const 2
  else   
   i64.const 1
  end
  global.set $logical/I
  global.get $logical/I
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 20
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 0
  i64.const 0
  i64.ne
  if (result i64)
   i64.const 0
  else   
   i64.const 1
  end
  global.set $logical/I
  global.get $logical/I
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 23
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f32.const 1
  f32.const 0
  f32.ne
  if (result f32)
   f32.const 2
  else   
   f32.const 1
  end
  global.set $logical/f
  global.get $logical/f
  f32.const 2
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 28
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f32.const 0
  f32.const 0
  f32.ne
  if (result f32)
   f32.const 0
  else   
   f32.const 1
  end
  global.set $logical/f
  global.get $logical/f
  f32.const 1
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 31
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1
  f64.const 0
  f64.ne
  if (result f64)
   f64.const 2
  else   
   f64.const 1
  end
  global.set $logical/F
  global.get $logical/F
  f64.const 2
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 36
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 0
  f64.const 0
  f64.ne
  if (result f64)
   f64.const 0
  else   
   f64.const 1
  end
  global.set $logical/F
  global.get $logical/F
  f64.const 1
  f64.eq
  i32.eqz
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
 )
)
