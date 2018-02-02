(module
 (type $i (func (result i32)))
 (type $v (func))
 (global $namespace/Outer.Inner.aVar (mut i32) (i32.const 0))
 (global $namespace/Outer.Inner.anEnum.ONE i32 (i32.const 1))
 (global $namespace/Outer.Inner.anEnum.TWO i32 (i32.const 2))
 (global $namespace/Joined.THREE i32 (i32.const 3))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $namespace/Outer.Inner.aFunc (; 0 ;) (type $i) (result i32)
  ;;@ namespace.ts:4:42
  (return
   (get_global $namespace/Outer.Inner.aVar)
  )
 )
 (func $namespace/Joined.anotherFunc (; 1 ;) (type $i) (result i32)
  ;;@ namespace.ts:17:53
  (return
   ;;@ namespace.ts:17:46
   (i32.const 3)
  )
 )
 (func $start (; 2 ;) (type $v)
  ;;@ namespace.ts:9:0
  (drop
   (get_global $namespace/Outer.Inner.aVar)
  )
  ;;@ namespace.ts:10:12
  (drop
   (call $namespace/Outer.Inner.aFunc)
  )
  ;;@ namespace.ts:11:0
  (drop
   (i32.const 1)
  )
  ;;@ namespace.ts:20:7
  (drop
   (call $namespace/Joined.anotherFunc)
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
  NAMESPACE: namespace/Outer
  NAMESPACE: namespace/Outer.Inner
  GLOBAL: namespace/Outer.Inner.aVar
  FUNCTION_PROTOTYPE: namespace/Outer.Inner.aFunc
  ENUM: namespace/Outer.Inner.anEnum
  ENUM: namespace/Joined
  FUNCTION_PROTOTYPE: namespace/Joined.anotherFunc
[program.exports]
  
;)
