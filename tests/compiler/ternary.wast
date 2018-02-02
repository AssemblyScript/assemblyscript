(module
 (type $v (func))
 (global $ternary/a (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  ;;@ ternary.ts:1:0
  (if
   (i32.const 0)
   ;;@ ternary.ts:1:4
   (unreachable)
   ;;@ ternary.ts:1:20
   (drop
    (i32.const 1)
   )
  )
  ;;@ ternary.ts:2:0
  (if
   (i32.const 1)
   ;;@ ternary.ts:2:4
   (drop
    (i32.const 1)
   )
   ;;@ ternary.ts:2:8
   (unreachable)
  )
  ;;@ ternary.ts:3:0
  (if
   (if (result i32)
    ;;@ ternary.ts:3:1
    (i32.const 0)
    ;;@ ternary.ts:3:5
    (unreachable)
    ;;@ ternary.ts:3:21
    (i32.const 1)
   )
   ;;@ ternary.ts:3:26
   (drop
    (i32.const 1)
   )
   ;;@ ternary.ts:3:30
   (unreachable)
  )
  ;;@ ternary.ts:7:0
  (set_global $ternary/a
   ;;@ ternary.ts:7:4
   (if (result i32)
    (i32.const 0)
    ;;@ ternary.ts:7:8
    (unreachable)
    ;;@ ternary.ts:7:24
    (i32.const 1)
   )
  )
  ;;@ ternary.ts:8:0
  (set_global $ternary/a
   ;;@ ternary.ts:8:4
   (if (result i32)
    (i32.const 1)
    ;;@ ternary.ts:8:8
    (i32.const 1)
    ;;@ ternary.ts:8:12
    (unreachable)
   )
  )
  ;;@ ternary.ts:9:0
  (set_global $ternary/a
   ;;@ ternary.ts:9:4
   (if (result i32)
    (if (result i32)
     ;;@ ternary.ts:9:5
     (i32.const 0)
     ;;@ ternary.ts:9:9
     (unreachable)
     ;;@ ternary.ts:9:25
     (i32.const 1)
    )
    ;;@ ternary.ts:9:30
    (i32.const 1)
    ;;@ ternary.ts:9:34
    (unreachable)
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
  GLOBAL: ternary/a
[program.exports]
  
;)
