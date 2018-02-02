(module
 (type $v (func))
 (global $scoped/aGlobal (mut i32) (i32.const 1))
 (global $scoped/aConstant i32 (i32.const 3))
 (global $scoped/aStartFunctionLocal (mut i32) (i32.const 2))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 f32)
  ;;@ scoped.ts:5:0
  (block $break|0
   ;;@ scoped.ts:5:5
   (set_local $0
    ;;@ scoped.ts:5:42
    (i32.const 0)
   )
   (loop $continue|0
    (if
     ;;@ scoped.ts:5:45
     (i32.lt_s
      (get_local $0)
      ;;@ scoped.ts:5:73
      (i32.const 1)
     )
     (block
      ;;@ scoped.ts:5:104
      (nop)
      ;;@ scoped.ts:5:76
      (set_local $0
       (i32.add
        ;;@ scoped.ts:5:78
        (get_local $0)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ scoped.ts:6:0
  (block $break|1
   ;;@ scoped.ts:6:5
   (set_local $1
    ;;@ scoped.ts:6:43
    (i32.const 0)
   )
   (loop $continue|1
    (if
     ;;@ scoped.ts:6:46
     (i32.lt_s
      (get_local $1)
      ;;@ scoped.ts:6:56
      (i32.const 1)
     )
     (block
      ;;@ scoped.ts:7:2
      (drop
       (get_local $1)
      )
      ;;@ scoped.ts:6:59
      (set_local $1
       (i32.add
        ;;@ scoped.ts:6:61
        (get_local $1)
        (i32.const 1)
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  ;;@ scoped.ts:9:0
  (block
   ;;@ scoped.ts:10:2
   (set_local $2
    ;;@ scoped.ts:10:42
    (i64.const 5)
   )
   ;;@ scoped.ts:11:2
   (block
    ;;@ scoped.ts:12:4
    (set_local $3
     ;;@ scoped.ts:12:41
     (f32.const 10)
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
  GLOBAL: scoped/aGlobal
  GLOBAL: scoped/aConstant
  GLOBAL: scoped/aStartFunctionLocal
[program.exports]
  
;)
