(module
 (type $ii (func (param i32) (result i32)))
 (memory $0 1)
 (export "doSwitch" (func $switch/doSwitch))
 (export "doSwitchDefaultFirst" (func $switch/doSwitchDefaultFirst))
 (export "doSwitchDefaultOmitted" (func $switch/doSwitchDefaultOmitted))
 (export "memory" (memory $0))
 (func $switch/doSwitch (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $case4|0
   (block $case2|0
    (if
     (i32.ne
      (tee_local $1
       (get_local $0)
      )
      (i32.const 1)
     )
     (block
      (br_if $case2|0
       (i32.eqz
        (get_local $1)
       )
      )
      (br_if $case4|0
       (i32.eq
        (get_local $1)
        (i32.const 2)
       )
      )
      (br_if $case4|0
       (i32.eq
        (get_local $1)
        (i32.const 3)
       )
      )
      (br $case2|0)
     )
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
  (local $1 i32)
  (block $case3|0
   (if
    (i32.ne
     (tee_local $1
      (get_local $0)
     )
     (i32.const 1)
    )
    (block
     (br_if $case3|0
      (i32.eq
       (get_local $1)
       (i32.const 2)
      )
     )
     (br_if $case3|0
      (i32.eq
       (get_local $1)
       (i32.const 3)
      )
     )
     (return
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 1)
   )
  )
  (i32.const 23)
 )
 (func $switch/doSwitchDefaultOmitted (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $break|0
   (block $case2|0
    (if
     (i32.ne
      (tee_local $1
       (get_local $0)
      )
      (i32.const 1)
     )
     (block
      (br_if $case2|0
       (i32.eq
        (get_local $1)
        (i32.const 2)
       )
      )
      (br_if $case2|0
       (i32.eq
        (get_local $1)
        (i32.const 3)
       )
      )
      (br $break|0)
     )
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
