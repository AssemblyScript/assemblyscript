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
 (global $HEAP_BASE i32 (i32.const 4))
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
  (block
   (set_local $0
    (i32.const 10)
   )
  )
  (block
   (set_local $1
    (i64.const 4294967296)
   )
  )
  (block
   (set_local $2
    (f64.const 1.5)
   )
  )
  (block
   (set_local $3
    (i32.const 10)
   )
  )
  (block
   (set_local $4
    (i64.const 4294967296)
   )
  )
  (block
   (set_local $5
    (f64.const 1.5)
   )
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
   (loop $continue|0
    (if
     (i32.lt_u
      (get_local $0)
      (get_local $1)
     )
     (block
      (nop)
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
)
(;
[program.elements]
  GLOBAL: NaN
  GLOBAL: Infinity
  FUNCTION_PROTOTYPE: isNaN
  FUNCTION_PROTOTYPE: isFinite
  FUNCTION_PROTOTYPE: clz
  FUNCTION_PROTOTYPE: ctz
  FUNCTION_PROTOTYPE: popcnt
  FUNCTION_PROTOTYPE: rotl
  FUNCTION_PROTOTYPE: rotr
  FUNCTION_PROTOTYPE: abs
  FUNCTION_PROTOTYPE: max
  FUNCTION_PROTOTYPE: min
  FUNCTION_PROTOTYPE: ceil
  FUNCTION_PROTOTYPE: floor
  FUNCTION_PROTOTYPE: copysign
  FUNCTION_PROTOTYPE: nearest
  FUNCTION_PROTOTYPE: reinterpret
  FUNCTION_PROTOTYPE: sqrt
  FUNCTION_PROTOTYPE: trunc
  FUNCTION_PROTOTYPE: load
  FUNCTION_PROTOTYPE: store
  FUNCTION_PROTOTYPE: sizeof
  FUNCTION_PROTOTYPE: select
  FUNCTION_PROTOTYPE: unreachable
  FUNCTION_PROTOTYPE: current_memory
  FUNCTION_PROTOTYPE: grow_memory
  FUNCTION_PROTOTYPE: parseInt
  FUNCTION_PROTOTYPE: parseFloat
  FUNCTION_PROTOTYPE: changetype
  FUNCTION_PROTOTYPE: assert
  FUNCTION_PROTOTYPE: i8
  FUNCTION_PROTOTYPE: i16
  FUNCTION_PROTOTYPE: i32
  FUNCTION_PROTOTYPE: i64
  FUNCTION_PROTOTYPE: u8
  FUNCTION_PROTOTYPE: u16
  FUNCTION_PROTOTYPE: u32
  FUNCTION_PROTOTYPE: u64
  FUNCTION_PROTOTYPE: bool
  FUNCTION_PROTOTYPE: f32
  FUNCTION_PROTOTYPE: f64
  FUNCTION_PROTOTYPE: isize
  FUNCTION_PROTOTYPE: usize
  GLOBAL: HEAP_BASE
  GLOBAL: infer-type/i
  GLOBAL: infer-type/I
  GLOBAL: infer-type/F
  FUNCTION_PROTOTYPE: infer-type/locals
  FUNCTION_PROTOTYPE: infer-type/reti
  GLOBAL: infer-type/ri
  FUNCTION_PROTOTYPE: infer-type/retI
  GLOBAL: infer-type/rI
  FUNCTION_PROTOTYPE: infer-type/retf
  GLOBAL: infer-type/rf
  FUNCTION_PROTOTYPE: infer-type/refF
  GLOBAL: infer-type/rF
[program.exports]
  
;)
