(module
 (type $FUNCSIG$v (func))
 (memory $0 1)
 (data (i32.const 8) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00l\00o\00g\00i\00c\00a\00l\00.\00t\00s")
 (global $logical/i (mut i32) (i32.const 0))
 (global $logical/I (mut i64) (i64.const 0))
 (global $logical/f (mut f32) (f32.const 0))
 (global $logical/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $start:logical (; 0 ;) (type $FUNCSIG$v)
  i32.const 2
  global.set $logical/i
  i32.const 1
  global.set $logical/i
  i64.const 2
  global.set $logical/I
  i64.const 1
  global.set $logical/I
  f32.const 2
  global.set $logical/f
  f32.const 1
  global.set $logical/f
  f64.const 2
  global.set $logical/F
  f64.const 1
  global.set $logical/F
 )
 (func $start (; 1 ;) (type $FUNCSIG$v)
  call $start:logical
 )
 (func $null (; 2 ;) (type $FUNCSIG$v)
  nop
 )
)
