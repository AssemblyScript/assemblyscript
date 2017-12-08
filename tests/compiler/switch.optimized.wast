(module
 (type $ii (func (param i32) (result i32)))
 (memory $0 1)
 (export "doSwitch" (func $switch/doSwitch))
 (export "doSwitchDefaultFirst" (func $switch/doSwitchDefaultFirst))
 (export "doSwitchDefaultOmitted" (func $switch/doSwitchDefaultOmitted))
 (export "memory" (memory $0))
 (func $switch/doSwitch (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (block $case4|1.1
   (block $case2|1.1
    (block $case0|1.1
     (block $tablify|0
      (br_table $case2|1.1 $case0|1.1 $case4|1.1 $case4|1.1 $tablify|0
       (get_local $0)
      )
     )
     (br $case2|1.1)
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
  (block $case3|1.1
   (block $case1|1.1
    (block $tablify|0
     (br_table $case1|1.1 $case3|1.1 $case3|1.1 $tablify|0
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
  (block $break|1.1
   (block $case2|1.1
    (block $case0|1.1
     (block $tablify|0
      (br_table $case0|1.1 $case2|1.1 $case2|1.1 $tablify|0
       (i32.sub
        (get_local $0)
        (i32.const 1)
       )
      )
     )
     (br $break|1.1)
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
