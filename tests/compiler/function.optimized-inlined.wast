(module
 (type $v (func))
 (type $i (func (result i32)))
 (type $I (func (result i64)))
 (type $f (func (result f32)))
 (type $F (func (result f64)))
 (type $iv (func (param i32)))
 (type $ii (func (param i32) (result i32)))
 (type $II (func (param i64) (result i64)))
 (type $ff (func (param f32) (result f32)))
 (type $FF (func (param f64) (result f64)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $IiI (func (param i64 i32) (result i64)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 f32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f64)
  (local $14 f64)
  (block
   (block $__inlined_func$function/v
    (nop)
   )
  )
  (drop
   (block (result i32)
    (block $__inlined_func$function/i (result i32)
     (i32.const 0)
    )
   )
  )
  (drop
   (block (result i64)
    (block $__inlined_func$function/I (result i64)
     (i64.const 0)
    )
   )
  )
  (drop
   (block (result f32)
    (block $__inlined_func$function/f (result f32)
     (f32.const 0)
    )
   )
  )
  (drop
   (block (result f64)
    (block $__inlined_func$function/F (result f64)
     (f64.const 0)
    )
   )
  )
  (block
   (block $__inlined_func$function/iv
    (set_local $0
     (i32.const 0)
    )
    (nop)
   )
  )
  (drop
   (block (result i32)
    (block $__inlined_func$function/ii (result i32)
     (set_local $1
      (i32.const 0)
     )
     (get_local $1)
    )
   )
  )
  (drop
   (block (result i64)
    (block $__inlined_func$function/II (result i64)
     (set_local $2
      (i64.const 0)
     )
     (get_local $2)
    )
   )
  )
  (drop
   (block (result f32)
    (block $__inlined_func$function/ff (result f32)
     (set_local $3
      (f32.const 0)
     )
     (get_local $3)
    )
   )
  )
  (drop
   (block (result f64)
    (block $__inlined_func$function/FF (result f64)
     (set_local $4
      (f64.const 0)
     )
     (get_local $4)
    )
   )
  )
  (block
   (block $__inlined_func$function/iiv
    (set_local $5
     (i32.const 1)
    )
    (set_local $6
     (i32.const 2)
    )
    (nop)
   )
  )
  (drop
   (block (result i32)
    (block $__inlined_func$function/iii (result i32)
     (set_local $7
      (i32.const 1)
     )
     (set_local $8
      (i32.const 2)
     )
     (i32.add
      (get_local $7)
      (get_local $8)
     )
    )
   )
  )
  (drop
   (block (result i64)
    (block $__inlined_func$function/III (result i64)
     (set_local $9
      (i64.const 1)
     )
     (set_local $10
      (i32.const 2)
     )
     (i64.add
      (get_local $9)
      (i64.extend_s/i32
       (get_local $10)
      )
     )
    )
   )
  )
  (drop
   (block (result f32)
    (block $__inlined_func$function/fff (result f32)
     (set_local $11
      (f32.const 1)
     )
     (set_local $12
      (f32.const 2)
     )
     (f32.add
      (get_local $11)
      (get_local $12)
     )
    )
   )
  )
  (drop
   (block (result f64)
    (block $__inlined_func$function/FFF (result f64)
     (set_local $13
      (f64.const 1)
     )
     (set_local $14
      (f64.const 2)
     )
     (f64.add
      (get_local $13)
      (get_local $14)
     )
    )
   )
  )
 )
)
