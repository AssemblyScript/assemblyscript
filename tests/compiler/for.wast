(module
 (type $v (func))
 (global $for/i (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  ;;@ for.ts:2:0
  (block $break|0
   ;;@ for.ts:2:5
   (set_global $for/i
    ;;@ for.ts:2:9
    (i32.const 0)
   )
   (loop $continue|0
    (if
     ;;@ for.ts:2:12
     (i32.lt_s
      (get_global $for/i)
      ;;@ for.ts:2:16
      (i32.const 10)
     )
     (block
      (block
       ;;@ for.ts:3:2
       (nop)
      )
      ;;@ for.ts:2:20
      (set_global $for/i
       (i32.add
        ;;@ for.ts:2:22
        (get_global $for/i)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ for.ts:5:0
  (if
   (i32.eqz
    ;;@ for.ts:5:7
    (i32.eq
     (get_global $for/i)
     ;;@ for.ts:5:12
     (i32.const 10)
    )
   )
   (unreachable)
  )
  ;;@ for.ts:7:0
  (block $break|1
   ;;@ for.ts:7:5
   (set_local $0
    ;;@ for.ts:7:18
    (i32.const 0)
   )
   (loop $continue|1
    (if
     ;;@ for.ts:7:21
     (i32.lt_s
      (get_local $0)
      ;;@ for.ts:7:25
      (i32.const 10)
     )
     (block
      (block
       ;;@ for.ts:8:2
       (nop)
      )
      ;;@ for.ts:7:29
      (set_local $0
       (i32.add
        ;;@ for.ts:7:31
        (get_local $0)
        (i32.const 1)
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  ;;@ for.ts:11:0
  (block $break|2
   (nop)
   (loop $continue|2
    (if
     ;;@ for.ts:11:7
     (i32.gt_s
      (get_global $for/i)
      ;;@ for.ts:11:11
      (i32.const 0)
     )
     (block
      ;;@ for.ts:11:18
      (nop)
      ;;@ for.ts:11:14
      (set_global $for/i
       (i32.sub
        ;;@ for.ts:11:16
        (get_global $for/i)
        (i32.const 1)
       )
      )
      (br $continue|2)
     )
    )
   )
  )
  ;;@ for.ts:12:0
  (if
   (i32.eqz
    ;;@ for.ts:12:7
    (i32.eq
     (get_global $for/i)
     ;;@ for.ts:12:12
     (i32.const 0)
    )
   )
   (unreachable)
  )
  ;;@ for.ts:14:0
  (block $break|3
   (nop)
   (loop $continue|3
    (if
     (i32.const 1)
     (block
      ;;@ for.ts:15:2
      (if
       ;;@ for.ts:15:6
       (i32.eq
        (get_global $for/i)
        ;;@ for.ts:15:11
        (i32.const 10)
       )
       ;;@ for.ts:16:4
       (br $break|3)
      )
      ;;@ for.ts:14:8
      (set_global $for/i
       (i32.add
        ;;@ for.ts:14:10
        (get_global $for/i)
        (i32.const 1)
       )
      )
      (br $continue|3)
     )
    )
   )
  )
  ;;@ for.ts:18:0
  (block $break|4
   (nop)
   (loop $continue|4
    (if
     (i32.const 1)
     (block
      ;;@ for.ts:19:2
      (if
       ;;@ for.ts:19:6
       (i32.eq
        (block (result i32)
         (set_global $for/i
          (i32.sub
           ;;@ for.ts:19:8
           (get_global $for/i)
           (i32.const 1)
          )
         )
         (get_global $for/i)
        )
        ;;@ for.ts:19:13
        (i32.const 0)
       )
       ;;@ for.ts:20:4
       (br $break|4)
      )
      (nop)
      (br $continue|4)
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
  GLOBAL: for/i
[program.exports]
  
;)
