(module
 (type $v (func))
 (type $i (func (result i32)))
 (type $I (func (result i64)))
 (type $f (func (result f32)))
 (type $F (func (result f64)))
 (global $infer-type/i i32 (i32.const 10))
 (global $infer-type/I i64 (i64.const 4294967296))
 (global $infer-type/F f64 (f64.const 1.5))
 (global $infer-type/ri (mut i32) (i32.const 0))
 (global $infer-type/rI (mut i64) (i64.const 0))
 (global $infer-type/rf (mut f32) (f32.const 0))
 (global $infer-type/rF (mut f64) (f64.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $infer-type/locals (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i64)
  (local $5 f64)
  (set_local $0
   (i32.const 10)
  )
  (set_local $1
   (i64.const 4294967296)
  )
  (set_local $2
   (f64.const 1.5)
  )
  (set_local $3
   (i32.const 10)
  )
  (set_local $4
   (i64.const 4294967296)
  )
  (set_local $5
   (f64.const 1.5)
  )
 )
 (func $infer-type/reti (; 1 ;) (type $i) (result i32)
  (return
   (i32.const 0)
  )
 )
 (func $infer-type/retI (; 2 ;) (type $I) (result i64)
  (return
   (i64.const 0)
  )
 )
 (func $infer-type/retf (; 3 ;) (type $f) (result f32)
  (return
   (f32.const 0)
  )
 )
 (func $infer-type/refF (; 4 ;) (type $F) (result f64)
  (return
   (f64.const 0)
  )
 )
 (func $start (; 5 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (drop
   (i32.const 10)
  )
  (drop
   (i64.const 4294967296)
  )
  (drop
   (f64.const 1.5)
  )
  (call $infer-type/locals)
  (set_global $infer-type/ri
   (call $infer-type/reti)
  )
  (drop
   (get_global $infer-type/ri)
  )
  (set_global $infer-type/rI
   (call $infer-type/retI)
  )
  (drop
   (get_global $infer-type/rI)
  )
  (set_global $infer-type/rf
   (call $infer-type/retf)
  )
  (drop
   (get_global $infer-type/rf)
  )
  (set_global $infer-type/rF
   (call $infer-type/refF)
  )
  (drop
   (get_global $infer-type/rF)
  )
  (block $break|0
   (block
    (set_local $0
     (i32.const 0)
    )
    (set_local $1
     (i32.const 10)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (nop)
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
)
