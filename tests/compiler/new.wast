(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (import "env" "allocate_memory" (func $new/allocate_memory (param i32) (result i32)))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "test" (func $new/test))
 (export "memory" (memory $0))
 (func $new/test (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $new/allocate_memory
    (i32.const 4)
   )
  )
  (set_local $1
   (call $new/allocate_memory
    (i32.const 8)
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
  CLASS_PROTOTYPE: new/Simple
  CLASS_PROTOTYPE: new/Generic
  FUNCTION_PROTOTYPE: new/allocate_memory
  FUNCTION_PROTOTYPE: allocate_memory
  FUNCTION_PROTOTYPE: new/test
[program.exports]
  FUNCTION_PROTOTYPE: allocate_memory
  FUNCTION_PROTOTYPE: new/test
;)
