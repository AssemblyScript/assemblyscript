(module
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $unary/i (mut i32) (i32.const 0))
 (global $unary/I (mut i64) (i64.const 0))
 (global $unary/f (mut f32) (f32.const 0))
 (global $unary/F (mut f64) (f64.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:unary (; 0 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i64)
  (local $2 f32)
  (local $3 f64)
  i32.const 1
  drop
  i32.const -1
  drop
  i32.const 1
  i32.eqz
  drop
  i32.const 1
  i32.const -1
  i32.xor
  drop
  f64.const 1.25
  drop
  f64.const -1.25
  drop
  f64.const 1.25
  f64.const 0
  f64.eq
  drop
  global.get $unary/i
  drop
  i32.const 0
  global.get $unary/i
  i32.sub
  drop
  global.get $unary/i
  i32.eqz
  drop
  global.get $unary/i
  i32.const -1
  i32.xor
  drop
  global.get $unary/i
  i32.const 1
  i32.add
  global.set $unary/i
  global.get $unary/i
  i32.const 1
  i32.sub
  global.set $unary/i
  global.get $unary/i
  i32.const 1
  i32.add
  global.set $unary/i
  global.get $unary/i
  i32.const 1
  i32.sub
  global.set $unary/i
  i32.const 1
  global.set $unary/i
  i32.const -1
  global.set $unary/i
  i32.const 1
  i32.eqz
  global.set $unary/i
  i32.const 1
  i32.const -1
  i32.xor
  global.set $unary/i
  global.get $unary/i
  global.set $unary/i
  i32.const 0
  global.get $unary/i
  i32.sub
  global.set $unary/i
  global.get $unary/i
  i32.eqz
  global.set $unary/i
  global.get $unary/i
  i32.const -1
  i32.xor
  global.set $unary/i
  block (result i32)
   global.get $unary/i
   i32.const 1
   i32.add
   global.set $unary/i
   global.get $unary/i
  end
  global.set $unary/i
  block (result i32)
   global.get $unary/i
   i32.const 1
   i32.sub
   global.set $unary/i
   global.get $unary/i
  end
  global.set $unary/i
  block (result i32)
   global.get $unary/i
   local.tee $0
   i32.const 1
   i32.add
   global.set $unary/i
   local.get $0
  end
  global.set $unary/i
  block (result i32)
   global.get $unary/i
   local.tee $0
   i32.const 1
   i32.sub
   global.set $unary/i
   local.get $0
  end
  global.set $unary/i
  global.get $unary/I
  drop
  i64.const 0
  global.get $unary/I
  i64.sub
  drop
  global.get $unary/I
  i64.eqz
  drop
  global.get $unary/I
  i64.const -1
  i64.xor
  drop
  global.get $unary/I
  i64.const 1
  i64.add
  global.set $unary/I
  global.get $unary/I
  i64.const 1
  i64.sub
  global.set $unary/I
  global.get $unary/I
  i64.const 1
  i64.add
  global.set $unary/I
  global.get $unary/I
  i64.const 1
  i64.sub
  global.set $unary/I
  i64.const 1
  global.set $unary/I
  i64.const -1
  global.set $unary/I
  i64.const 1
  i64.eqz
  i64.extend_i32_u
  global.set $unary/I
  i64.const 1
  i64.const -1
  i64.xor
  global.set $unary/I
  global.get $unary/I
  global.set $unary/I
  i64.const 0
  global.get $unary/I
  i64.sub
  global.set $unary/I
  global.get $unary/I
  i64.eqz
  i64.extend_i32_u
  global.set $unary/I
  global.get $unary/I
  i64.const -1
  i64.xor
  global.set $unary/I
  block (result i64)
   global.get $unary/I
   i64.const 1
   i64.add
   global.set $unary/I
   global.get $unary/I
  end
  global.set $unary/I
  block (result i64)
   global.get $unary/I
   i64.const 1
   i64.sub
   global.set $unary/I
   global.get $unary/I
  end
  global.set $unary/I
  block (result i64)
   global.get $unary/I
   local.tee $1
   i64.const 1
   i64.add
   global.set $unary/I
   local.get $1
  end
  global.set $unary/I
  block (result i64)
   global.get $unary/I
   local.tee $1
   i64.const 1
   i64.sub
   global.set $unary/I
   local.get $1
  end
  global.set $unary/I
  global.get $unary/f
  drop
  global.get $unary/f
  f32.neg
  drop
  global.get $unary/f
  f32.const 0
  f32.eq
  drop
  global.get $unary/f
  f32.const 1
  f32.add
  global.set $unary/f
  global.get $unary/f
  f32.const 1
  f32.sub
  global.set $unary/f
  global.get $unary/f
  f32.const 1
  f32.add
  global.set $unary/f
  global.get $unary/f
  f32.const 1
  f32.sub
  global.set $unary/f
  f32.const 1.25
  global.set $unary/f
  f32.const -1.25
  global.set $unary/f
  f64.const 1.25
  f64.const 0
  f64.eq
  global.set $unary/i
  global.get $unary/f
  global.set $unary/f
  global.get $unary/f
  f32.neg
  global.set $unary/f
  global.get $unary/f
  f32.const 0
  f32.eq
  global.set $unary/i
  block (result f32)
   global.get $unary/f
   f32.const 1
   f32.add
   global.set $unary/f
   global.get $unary/f
  end
  global.set $unary/f
  block (result f32)
   global.get $unary/f
   f32.const 1
   f32.sub
   global.set $unary/f
   global.get $unary/f
  end
  global.set $unary/f
  block (result f32)
   global.get $unary/f
   local.tee $2
   f32.const 1
   f32.add
   global.set $unary/f
   local.get $2
  end
  global.set $unary/f
  block (result f32)
   global.get $unary/f
   local.tee $2
   f32.const 1
   f32.sub
   global.set $unary/f
   local.get $2
  end
  global.set $unary/f
  global.get $unary/F
  drop
  global.get $unary/F
  f64.neg
  drop
  global.get $unary/F
  f64.const 0
  f64.eq
  drop
  global.get $unary/F
  f64.const 1
  f64.add
  global.set $unary/F
  global.get $unary/F
  f64.const 1
  f64.sub
  global.set $unary/F
  global.get $unary/F
  f64.const 1
  f64.add
  global.set $unary/F
  global.get $unary/F
  f64.const 1
  f64.sub
  global.set $unary/F
  f64.const 1.25
  global.set $unary/F
  f64.const -1.25
  global.set $unary/F
  f64.const 1.25
  f64.const 0
  f64.eq
  i64.extend_i32_u
  global.set $unary/I
  global.get $unary/F
  global.set $unary/F
  global.get $unary/F
  f64.neg
  global.set $unary/F
  global.get $unary/F
  f64.const 0
  f64.eq
  i64.extend_i32_u
  global.set $unary/I
  block (result f64)
   global.get $unary/F
   f64.const 1
   f64.add
   global.set $unary/F
   global.get $unary/F
  end
  global.set $unary/F
  block (result f64)
   global.get $unary/F
   f64.const 1
   f64.sub
   global.set $unary/F
   global.get $unary/F
  end
  global.set $unary/F
  block (result f64)
   global.get $unary/F
   local.tee $3
   f64.const 1
   f64.add
   global.set $unary/F
   local.get $3
  end
  global.set $unary/F
  block (result f64)
   global.get $unary/F
   local.tee $3
   f64.const 1
   f64.sub
   global.set $unary/F
   local.get $3
  end
  global.set $unary/F
 )
 (func $start (; 1 ;) (type $FUNCSIG$v)
  call $start:unary
 )
 (func $null (; 2 ;) (type $FUNCSIG$v)
 )
)
