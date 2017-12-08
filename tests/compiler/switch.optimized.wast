(module
 (type $ii (func (param i32) (result i32)))
 (memory $0 1)
 (export "doSwitch" (func $switch/doSwitch))
 (export "doSwitchDefaultFirst" (func $switch/doSwitchDefaultFirst))
 (export "doSwitchDefaultOmitted" (func $switch/doSwitchDefaultOmitted))
 (export "memory" (memory $0))
 (func $switch/doSwitch (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (block $case4|0
   (block $case2|0
    (block $case0|0
     (block $tablify|0
      (br_table $case2|0 $case0|0 $case4|0 $case4|0 $tablify|0
       (get_local $0)
      )
     )
     (br $case2|0)
    )
    (return
     (i32.const 1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.const 23)
 )
 (func $switch/doSwitchDefaultFirst (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (block $case3|0
   (block $case1|0
    (block $tablify|0
     (br_table $case1|0 $case3|0 $case3|0 $tablify|0
      (i32.sub
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (return
     (i32.const 0)
    )
   )
   (return
    (i32.const 1)
   )
  )
  (i32.const 23)
 )
 (func $switch/doSwitchDefaultOmitted (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (block $break|0
   (block $case2|0
    (block $case0|0
     (block $tablify|0
      (br_table $case0|0 $case2|0 $case2|0 $tablify|0
       (i32.sub
        (get_local $0)
        (i32.const 1)
       )
      )
     )
     (br $break|0)
    )
    (return
     (i32.const 1)
    )
   )
   (return
    (i32.const 23)
   )
  )
  (i32.const 0)
 )
)
