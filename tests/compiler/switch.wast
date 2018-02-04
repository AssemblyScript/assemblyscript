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
