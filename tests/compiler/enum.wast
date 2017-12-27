(module
 (type $i (func (result i32)))
 (type $v (func))
 (global $enum/Implicit.ZERO i32 (i32.const 0))
 (global $enum/Implicit.ONE i32 (i32.const 1))
 (global $enum/Implicit.TWO i32 (i32.const 2))
 (global $enum/Implicit.THREE i32 (i32.const 3))
 (global $enum/Explicit.ZERO i32 (i32.const 0))
 (global $enum/Explicit.ONE i32 (i32.const 1))
 (global $enum/Explicit.TWO i32 (i32.const 2))
 (global $enum/Explicit.THREE i32 (i32.const 3))
 (global $enum/Mixed.ZERO i32 (i32.const 0))
 (global $enum/Mixed.ONE i32 (i32.const 1))
 (global $enum/Mixed.THREE i32 (i32.const 3))
 (global $enum/Mixed.FOUR i32 (i32.const 4))
 (global $enum/NonConstant.ZERO (mut i32) (i32.const 0))
 (global $enum/NonConstant.ONE (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $enum/getZero (; 0 ;) (type $i) (result i32)
  (return
   (i32.const 0)
  )
 )
 (func $start (; 1 ;) (type $v)
  (set_global $enum/NonConstant.ZERO
   (call $enum/getZero)
  )
  (set_global $enum/NonConstant.ONE
   (i32.add
    (get_global $enum/NonConstant.ZERO)
    (i32.const 1)
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
  ENUM: enum/Implicit
  ENUM: enum/Explicit
  ENUM: enum/Mixed
  FUNCTION_PROTOTYPE: enum/getZero
  ENUM: enum/NonConstant
[program.exports]
  ENUM: enum/Implicit
  ENUM: enum/Explicit
  ENUM: enum/Mixed
  ENUM: enum/NonConstant
;)
