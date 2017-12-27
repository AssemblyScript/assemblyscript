(module
 (type $v (func))
 (type $i (func (result i32)))
 (type $I (func (result i64)))
 (type $f (func (result f32)))
 (type $F (func (result f64)))
 (global $infer-type/ri (mut i32) (i32.const 0))
 (global $infer-type/rI (mut i64) (i64.const 0))
 (global $infer-type/rf (mut f32) (f32.const 0))
 (global $infer-type/rF (mut f64) (f64.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (block
   (block $__inlined_func$infer-type/locals
    (nop)
   )
  )
  (set_global $infer-type/ri
   (block (result i32)
    (block $__inlined_func$infer-type/reti (result i32)
     (i32.const 0)
    )
   )
  )
  (set_global $infer-type/rI
   (block (result i64)
    (block $__inlined_func$infer-type/retI (result i64)
     (i64.const 0)
    )
   )
  )
  (set_global $infer-type/rf
   (block (result f32)
    (block $__inlined_func$infer-type/retf (result f32)
     (f32.const 0)
    )
   )
  )
  (set_global $infer-type/rF
   (block (result f64)
    (block $__inlined_func$infer-type/refF (result f64)
     (f64.const 0)
    )
   )
  )
  (set_local $0
   (i32.const 0)
  )
  (set_local $1
   (i32.const 10)
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $0)
     (get_local $1)
    )
    (block
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
)
