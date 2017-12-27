(module
 (type $v (func))
 (import "env" "externalFunc" (func $declare/externalFunc))
 (import "env" "externalConst" (global $declare/externalConst i32))
 (import "external" "externalFunc" (func $declare/external.externalFunc))
 (import "external" "externalConst" (global $declare/external.externalConst i32))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "test" (func $declare/test))
 (export "memory" (memory $0))
 (func $declare/test (; 2 ;) (type $v)
  (call $declare/externalFunc)
  (drop
   (get_global $declare/externalConst)
  )
  (call $declare/external.externalFunc)
  (drop
   (get_global $declare/external.externalConst)
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
  FUNCTION_PROTOTYPE: declare/externalFunc
  GLOBAL: declare/externalConst
  NAMESPACE: declare/external
  FUNCTION_PROTOTYPE: declare/external.externalFunc
  GLOBAL: declare/external.externalConst
  FUNCTION_PROTOTYPE: declare/test
[program.exports]
  FUNCTION_PROTOTYPE: declare/test
;)
