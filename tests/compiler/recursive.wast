(module
 (type $ii (func (param i32) (result i32)))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "fib" (func $recursive/fib))
 (export "memory" (memory $0))
 (func $recursive/fib (; 0 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ recursive.ts:2:2
  (if
   ;;@ recursive.ts:2:6
   (i32.le_s
    (get_local $0)
    ;;@ recursive.ts:2:11
    (i32.const 1)
   )
   ;;@ recursive.ts:2:21
   (return
    (i32.const 1)
   )
  )
  ;;@ recursive.ts:3:31
  (return
   ;;@ recursive.ts:3:9
   (i32.add
    (call $recursive/fib
     ;;@ recursive.ts:3:13
     (i32.sub
      (get_local $0)
      ;;@ recursive.ts:3:17
      (i32.const 1)
     )
    )
    ;;@ recursive.ts:3:22
    (call $recursive/fib
     ;;@ recursive.ts:3:26
     (i32.sub
      (get_local $0)
      ;;@ recursive.ts:3:30
      (i32.const 2)
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
  FUNCTION_PROTOTYPE: recursive/fib
[program.exports]
  FUNCTION_PROTOTYPE: recursive/fib
;)
