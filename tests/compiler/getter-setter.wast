(module
 (type $i (func (result i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (global $getter-setter/Foo._bar (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $getter-setter/Foo.get:bar (; 0 ;) (type $i) (result i32)
  ;;@ getter-setter.ts:5:15
  (return
   ;;@ getter-setter.ts:5:11
   (get_global $getter-setter/Foo._bar)
  )
 )
 (func $getter-setter/Foo.set:bar (; 1 ;) (type $iv) (param $0 i32)
  ;;@ getter-setter.ts:9:4
  (set_global $getter-setter/Foo._bar
   ;;@ getter-setter.ts:9:15
   (get_local $0)
  )
 )
 (func $start (; 2 ;) (type $v)
  ;;@ getter-setter.ts:13:0
  (if
   (i32.eqz
    ;;@ getter-setter.ts:13:7
    (i32.eq
     (call $getter-setter/Foo.get:bar)
     ;;@ getter-setter.ts:13:18
     (i32.const 0)
    )
   )
   (unreachable)
  )
  ;;@ getter-setter.ts:14:0
  (call $getter-setter/Foo.set:bar
   ;;@ getter-setter.ts:14:10
   (i32.const 1)
  )
  ;;@ getter-setter.ts:15:0
  (if
   (i32.eqz
    ;;@ getter-setter.ts:15:7
    (i32.eq
     (call $getter-setter/Foo.get:bar)
     ;;@ getter-setter.ts:15:18
     (i32.const 1)
    )
   )
   (unreachable)
  )
  ;;@ getter-setter.ts:16:0
  (if
   (i32.eqz
    ;;@ getter-setter.ts:16:7
    (i32.eq
     (block (result i32)
      (call $getter-setter/Foo.set:bar
       ;;@ getter-setter.ts:16:18
       (i32.const 2)
      )
      (call $getter-setter/Foo.get:bar)
     )
     ;;@ getter-setter.ts:16:24
     (i32.const 2)
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
  CLASS_PROTOTYPE: getter-setter/Foo
  GLOBAL: getter-setter/Foo._bar
  PROPERTY: getter-setter/Foo.bar
[program.exports]
  
;)
