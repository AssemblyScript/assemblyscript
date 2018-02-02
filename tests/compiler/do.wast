(module
 (type $v (func))
 (global $do/n (mut i32) (i32.const 10))
 (global $do/m (mut i32) (i32.const 0))
 (global $do/o (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  ;;@ do.ts:3:0
  (block $break|0
   (loop $continue|0
    ;;@ do.ts:3:3
    (block
     ;;@ do.ts:4:2
     (set_global $do/n
      (i32.sub
       (get_global $do/n)
       (i32.const 1)
      )
     )
     ;;@ do.ts:5:2
     (set_global $do/m
      (i32.add
       (get_global $do/m)
       (i32.const 1)
      )
     )
    )
    (br_if $continue|0
     ;;@ do.ts:6:9
     (get_global $do/n)
    )
   )
  )
  ;;@ do.ts:7:0
  (if
   (i32.eqz
    ;;@ do.ts:7:7
    (i32.eq
     (get_global $do/n)
     ;;@ do.ts:7:12
     (i32.const 0)
    )
   )
   (unreachable)
  )
  ;;@ do.ts:8:0
  (if
   (i32.eqz
    ;;@ do.ts:8:7
    (i32.eq
     (get_global $do/m)
     ;;@ do.ts:8:12
     (i32.const 10)
    )
   )
   (unreachable)
  )
  ;;@ do.ts:10:0
  (set_global $do/n
   ;;@ do.ts:10:4
   (i32.const 10)
  )
  ;;@ do.ts:11:0
  (block $break|1
   (loop $continue|1
    ;;@ do.ts:11:2
    (nop)
    (br_if $continue|1
     ;;@ do.ts:11:10
     (block (result i32)
      (set_local $0
       (get_global $do/n)
      )
      (set_global $do/n
       (i32.sub
        (get_local $0)
        (i32.const 1)
       )
      )
      (get_local $0)
     )
    )
   )
  )
  ;;@ do.ts:12:0
  (if
   (i32.eqz
    ;;@ do.ts:12:7
    (i32.eq
     (get_global $do/n)
     ;;@ do.ts:12:12
     (i32.sub
      (i32.const 0)
      ;;@ do.ts:12:13
      (i32.const 1)
     )
    )
   )
   (unreachable)
  )
  ;;@ do.ts:14:0
  (set_global $do/n
   ;;@ do.ts:14:4
   (i32.const 10)
  )
  ;;@ do.ts:15:0
  (set_global $do/m
   ;;@ do.ts:15:4
   (i32.const 0)
  )
  ;;@ do.ts:17:0
  (block $break|2
   (loop $continue|2
    ;;@ do.ts:17:3
    (block
     ;;@ do.ts:18:2
     (set_global $do/n
      (i32.sub
       (get_global $do/n)
       (i32.const 1)
      )
     )
     ;;@ do.ts:19:2
     (set_global $do/m
      (i32.add
       (get_global $do/m)
       (i32.const 1)
      )
     )
     ;;@ do.ts:20:2
     (block $break|3
      (loop $continue|3
       ;;@ do.ts:20:5
       (block
        ;;@ do.ts:21:4
        (set_global $do/n
         (i32.sub
          (get_global $do/n)
          (i32.const 1)
         )
        )
        ;;@ do.ts:22:4
        (set_global $do/o
         (i32.add
          (get_global $do/o)
          (i32.const 1)
         )
        )
       )
       (br_if $continue|3
        ;;@ do.ts:23:11
        (get_global $do/n)
       )
      )
     )
     ;;@ do.ts:24:2
     (if
      (i32.eqz
       ;;@ do.ts:24:9
       (i32.eq
        (get_global $do/n)
        ;;@ do.ts:24:14
        (i32.const 0)
       )
      )
      (unreachable)
     )
     ;;@ do.ts:25:2
     (if
      (i32.eqz
       ;;@ do.ts:25:9
       (i32.eq
        (get_global $do/o)
        ;;@ do.ts:25:14
        (i32.const 9)
       )
      )
      (unreachable)
     )
    )
    (br_if $continue|2
     ;;@ do.ts:26:9
     (get_global $do/n)
    )
   )
  )
  ;;@ do.ts:27:0
  (if
   (i32.eqz
    ;;@ do.ts:27:7
    (i32.eq
     (get_global $do/n)
     ;;@ do.ts:27:12
     (i32.const 0)
    )
   )
   (unreachable)
  )
  ;;@ do.ts:28:0
  (if
   (i32.eqz
    ;;@ do.ts:28:7
    (i32.eq
     (get_global $do/m)
     ;;@ do.ts:28:12
     (i32.const 1)
    )
   )
   (unreachable)
  )
  ;;@ do.ts:29:0
  (if
   (i32.eqz
    ;;@ do.ts:29:7
    (i32.eq
     (get_global $do/o)
     ;;@ do.ts:29:12
     (i32.const 9)
    )
   )
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
  GLOBAL: do/n
  GLOBAL: do/m
  GLOBAL: do/o
[program.exports]
  
;)
