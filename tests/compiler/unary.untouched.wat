(module
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $unary/i (mut i32) (i32.const 0))
 (global $unary/I (mut i64) (i64.const 0))
 (global $unary/f (mut f32) (f32.const 0))
 (global $unary/F (mut f64) (f64.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
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
  get_global $unary/i
  drop
  i32.const 0
  get_global $unary/i
  i32.sub
  drop
  get_global $unary/i
  i32.eqz
  drop
  get_global $unary/i
  i32.const -1
  i32.xor
  drop
  get_global $unary/i
  i32.const 1
  i32.add
  set_global $unary/i
  get_global $unary/i
  i32.const 1
  i32.sub
  set_global $unary/i
  get_global $unary/i
  i32.const 1
  i32.add
  set_global $unary/i
  get_global $unary/i
  i32.const 1
  i32.sub
  set_global $unary/i
  i32.const 1
  set_global $unary/i
  i32.const -1
  set_global $unary/i
  i32.const 1
  i32.eqz
  set_global $unary/i
  i32.const 1
  i32.const -1
  i32.xor
  set_global $unary/i
  get_global $unary/i
  set_global $unary/i
  i32.const 0
  get_global $unary/i
  i32.sub
  set_global $unary/i
  get_global $unary/i
  i32.eqz
  set_global $unary/i
  get_global $unary/i
  i32.const -1
  i32.xor
  set_global $unary/i
  block (result i32)
   get_global $unary/i
   i32.const 1
   i32.add
   set_global $unary/i
   get_global $unary/i
  end
  set_global $unary/i
  block (result i32)
   get_global $unary/i
   i32.const 1
   i32.sub
   set_global $unary/i
   get_global $unary/i
  end
  set_global $unary/i
  block (result i32)
   get_global $unary/i
   tee_local $0
   i32.const 1
   i32.add
   set_global $unary/i
   get_local $0
  end
  set_global $unary/i
  block (result i32)
   get_global $unary/i
   tee_local $0
   i32.const 1
   i32.sub
   set_global $unary/i
   get_local $0
  end
  set_global $unary/i
  get_global $unary/I
  drop
  i64.const 0
  get_global $unary/I
  i64.sub
  drop
  get_global $unary/I
  i64.eqz
  drop
  get_global $unary/I
  i64.const -1
  i64.xor
  drop
  get_global $unary/I
  i64.const 1
  i64.add
  set_global $unary/I
  get_global $unary/I
  i64.const 1
  i64.sub
  set_global $unary/I
  get_global $unary/I
  i64.const 1
  i64.add
  set_global $unary/I
  get_global $unary/I
  i64.const 1
  i64.sub
  set_global $unary/I
  i64.const 1
  set_global $unary/I
  i64.const -1
  set_global $unary/I
  i64.const 1
  i64.eqz
  i64.extend_u/i32
  set_global $unary/I
  i64.const 1
  i64.const -1
  i64.xor
  set_global $unary/I
  get_global $unary/I
  set_global $unary/I
  i64.const 0
  get_global $unary/I
  i64.sub
  set_global $unary/I
  get_global $unary/I
  i64.eqz
  i64.extend_u/i32
  set_global $unary/I
  get_global $unary/I
  i64.const -1
  i64.xor
  set_global $unary/I
  block (result i64)
   get_global $unary/I
   i64.const 1
   i64.add
   set_global $unary/I
   get_global $unary/I
  end
  set_global $unary/I
  block (result i64)
   get_global $unary/I
   i64.const 1
   i64.sub
   set_global $unary/I
   get_global $unary/I
  end
  set_global $unary/I
  block (result i64)
   get_global $unary/I
   tee_local $1
   i64.const 1
   i64.add
   set_global $unary/I
   get_local $1
  end
  set_global $unary/I
  block (result i64)
   get_global $unary/I
   tee_local $1
   i64.const 1
   i64.sub
   set_global $unary/I
   get_local $1
  end
  set_global $unary/I
  get_global $unary/f
  drop
  get_global $unary/f
  f32.neg
  drop
  get_global $unary/f
  f32.const 0
  f32.eq
  drop
  get_global $unary/f
  f32.const 1
  f32.add
  set_global $unary/f
  get_global $unary/f
  f32.const 1
  f32.sub
  set_global $unary/f
  get_global $unary/f
  f32.const 1
  f32.add
  set_global $unary/f
  get_global $unary/f
  f32.const 1
  f32.sub
  set_global $unary/f
  f32.const 1.25
  set_global $unary/f
  f32.const -1.25
  set_global $unary/f
  f64.const 1.25
  f64.const 0
  f64.eq
  set_global $unary/i
  get_global $unary/f
  set_global $unary/f
  get_global $unary/f
  f32.neg
  set_global $unary/f
  get_global $unary/f
  f32.const 0
  f32.eq
  set_global $unary/i
  block (result f32)
   get_global $unary/f
   f32.const 1
   f32.add
   set_global $unary/f
   get_global $unary/f
  end
  set_global $unary/f
  block (result f32)
   get_global $unary/f
   f32.const 1
   f32.sub
   set_global $unary/f
   get_global $unary/f
  end
  set_global $unary/f
  block (result f32)
   get_global $unary/f
   tee_local $2
   f32.const 1
   f32.add
   set_global $unary/f
   get_local $2
  end
  set_global $unary/f
  block (result f32)
   get_global $unary/f
   tee_local $2
   f32.const 1
   f32.sub
   set_global $unary/f
   get_local $2
  end
  set_global $unary/f
  get_global $unary/F
  drop
  get_global $unary/F
  f64.neg
  drop
  get_global $unary/F
  f64.const 0
  f64.eq
  drop
  get_global $unary/F
  f64.const 1
  f64.add
  set_global $unary/F
  get_global $unary/F
  f64.const 1
  f64.sub
  set_global $unary/F
  get_global $unary/F
  f64.const 1
  f64.add
  set_global $unary/F
  get_global $unary/F
  f64.const 1
  f64.sub
  set_global $unary/F
  f64.const 1.25
  set_global $unary/F
  f64.const -1.25
  set_global $unary/F
  f64.const 1.25
  f64.const 0
  f64.eq
  i64.extend_u/i32
  set_global $unary/I
  get_global $unary/F
  set_global $unary/F
  get_global $unary/F
  f64.neg
  set_global $unary/F
  get_global $unary/F
  f64.const 0
  f64.eq
  i64.extend_u/i32
  set_global $unary/I
  block (result f64)
   get_global $unary/F
   f64.const 1
   f64.add
   set_global $unary/F
   get_global $unary/F
  end
  set_global $unary/F
  block (result f64)
   get_global $unary/F
   f64.const 1
   f64.sub
   set_global $unary/F
   get_global $unary/F
  end
  set_global $unary/F
  block (result f64)
   get_global $unary/F
   tee_local $3
   f64.const 1
   f64.add
   set_global $unary/F
   get_local $3
  end
  set_global $unary/F
  block (result f64)
   get_global $unary/F
   tee_local $3
   f64.const 1
   f64.sub
   set_global $unary/F
   get_local $3
  end
  set_global $unary/F
 )
 (func $null (; 1 ;) (type $v)
 )
)
