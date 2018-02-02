(module
 (type $ii (func (param i32) (result i32)))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "doSwitch" (func $switch/doSwitch))
 (export "doSwitchDefaultFirst" (func $switch/doSwitchDefaultFirst))
 (export "doSwitchDefaultOmitted" (func $switch/doSwitchDefaultOmitted))
 (export "memory" (memory $0))
 (func $switch/doSwitch (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ switch.ts:2:2
  (block $break|0
   (block $case4|0
    (block $case3|0
     (block $case2|0
      (block $case1|0
       (block $case0|0
        (set_local $1
         ;;@ switch.ts:2:10
         (get_local $0)
        )
        (br_if $case0|0
         (i32.eq
          (get_local $1)
          ;;@ switch.ts:3:9
          (i32.const 1)
         )
        )
        (br_if $case1|0
         (i32.eq
          (get_local $1)
          ;;@ switch.ts:5:9
          (i32.const 0)
         )
        )
        (br_if $case3|0
         (i32.eq
          (get_local $1)
          ;;@ switch.ts:8:9
          (i32.const 2)
         )
        )
        (br_if $case4|0
         (i32.eq
          (get_local $1)
          ;;@ switch.ts:9:9
          (i32.const 3)
         )
        )
        (br $case2|0)
       )
       ;;@ switch.ts:4:13
       (return
        (i32.const 1)
       )
      )
     )
     ;;@ switch.ts:7:13
     (return
      (i32.const 0)
     )
    )
   )
   ;;@ switch.ts:10:13
   (return
    (i32.const 23)
   )
  )
 )
 (func $switch/doSwitchDefaultFirst (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ switch.ts:15:2
  (block $break|0
   (block $case3|0
    (block $case2|0
     (block $case1|0
      (block $case0|0
       (set_local $1
        ;;@ switch.ts:15:10
        (get_local $0)
       )
       (br_if $case1|0
        (i32.eq
         (get_local $1)
         ;;@ switch.ts:18:9
         (i32.const 1)
        )
       )
       (br_if $case2|0
        (i32.eq
         (get_local $1)
         ;;@ switch.ts:20:9
         (i32.const 2)
        )
       )
       (br_if $case3|0
        (i32.eq
         (get_local $1)
         ;;@ switch.ts:21:9
         (i32.const 3)
        )
       )
       (br $case0|0)
      )
      ;;@ switch.ts:17:13
      (return
       (i32.const 0)
      )
     )
     ;;@ switch.ts:19:13
     (return
      (i32.const 1)
     )
    )
   )
   ;;@ switch.ts:22:13
   (return
    (i32.const 23)
   )
  )
 )
 (func $switch/doSwitchDefaultOmitted (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ switch.ts:27:2
  (block $break|0
   (block $case2|0
    (block $case1|0
     (block $case0|0
      (set_local $1
       ;;@ switch.ts:27:10
       (get_local $0)
      )
      (br_if $case0|0
       (i32.eq
        (get_local $1)
        ;;@ switch.ts:28:9
        (i32.const 1)
       )
      )
      (br_if $case1|0
       (i32.eq
        (get_local $1)
        ;;@ switch.ts:30:9
        (i32.const 2)
       )
      )
      (br_if $case2|0
       (i32.eq
        (get_local $1)
        ;;@ switch.ts:31:9
        (i32.const 3)
       )
      )
      (br $break|0)
     )
     ;;@ switch.ts:29:13
     (return
      (i32.const 1)
     )
    )
   )
   ;;@ switch.ts:32:13
   (return
    (i32.const 23)
   )
  )
  ;;@ switch.ts:34:9
  (return
   (i32.const 0)
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
  FUNCTION_PROTOTYPE: switch/doSwitch
  FUNCTION_PROTOTYPE: switch/doSwitchDefaultFirst
  FUNCTION_PROTOTYPE: switch/doSwitchDefaultOmitted
[program.exports]
  FUNCTION_PROTOTYPE: switch/doSwitch
  FUNCTION_PROTOTYPE: switch/doSwitchDefaultFirst
  FUNCTION_PROTOTYPE: switch/doSwitchDefaultOmitted
;)
