(module
 (type $v (func))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  ;;@ assert.ts:1:0
  (if
   (i32.eqz
    ;;@ assert.ts:1:7
    (i32.const 1)
   )
   (unreachable)
  )
  ;;@ assert.ts:2:0
  (if
   (i32.eqz
    ;;@ assert.ts:2:7
    (i32.const 1)
   )
   (unreachable)
  )
  ;;@ assert.ts:3:0
  (if
   (i32.eqz
    ;;@ assert.ts:3:7
    (i32.gt_s
     (i32.const 1)
     ;;@ assert.ts:3:11
     (i32.const 0)
    )
   )
   (unreachable)
  )
  ;;@ assert.ts:4:0
  (if
   (f64.eq
    ;;@ assert.ts:4:7
    (f64.const 0.5)
    (f64.const 0)
   )
   (unreachable)
  )
  ;;@ assert.ts:5:0
  (if
   (i32.eqz
    ;;@ assert.ts:5:7
    (f64.gt
     (f64.const 0.5)
     ;;@ assert.ts:5:13
     (f64.const 0.4)
    )
   )
   (unreachable)
  )
  ;;@ assert.ts:6:0
  (if
   (i64.eqz
    ;;@ assert.ts:6:7
    (i64.const 4294967296)
   )
   (unreachable)
  )
  ;;@ assert.ts:7:0
  (if
   (i32.eqz
    ;;@ assert.ts:7:7
    (i64.gt_s
     (i64.const 4294967296)
     ;;@ assert.ts:7:21
     (i64.const 1)
    )
   )
   (unreachable)
  )
  ;;@ assert.ts:10:0
  (if
   ;;@ assert.ts:10:4
   (i32.eqz
    ;;@ assert.ts:10:5
    (if (result i32)
     (i32.eqz
      (tee_local $0
       ;;@ assert.ts:10:12
       (i32.const 1)
      )
     )
     (unreachable)
     (get_local $0)
    )
   )
   ;;@ assert.ts:11:2
   (unreachable)
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
  FUNCTION_PROTOTYPE: changetype
  FUNCTION_PROTOTYPE: assert
  FUNCTION_PROTOTYPE: abort
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
[program.exports]
  
;)
