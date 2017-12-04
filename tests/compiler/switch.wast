(module
 (type $ii (func (param i32) (result i32)))
 (memory $0 1)
 (data (i32.const 4) "\08\00\00\00")
 (export "doSwitch" (func $switch/doSwitch))
 (export "doSwitchDefaultFirst" (func $switch/doSwitchDefaultFirst))
 (export "doSwitchDefaultOmitted" (func $switch/doSwitchDefaultOmitted))
 (export "memory" (memory $0))
 (func $switch/doSwitch (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $break$1.1
   (block $case4$1.1
    (block $case3$1.1
     (block $case2$1.1
      (block $case1$1.1
       (block $case0$1.1
        (set_local $1
         (get_local $0)
        )
        (br_if $case0$1.1
         (i32.eq
          (get_local $1)
          (i32.const 1)
         )
        )
        (br_if $case1$1.1
         (i32.eq
          (get_local $1)
          (i32.const 0)
         )
        )
        (br_if $case3$1.1
         (i32.eq
          (get_local $1)
          (i32.const 2)
         )
        )
        (br_if $case4$1.1
         (i32.eq
          (get_local $1)
          (i32.const 3)
         )
        )
        (br $case2$1.1)
       )
       (return
        (i32.const 1)
       )
      )
     )
     (return
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 23)
   )
  )
 )
 (func $switch/doSwitchDefaultFirst (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $break$1.1
   (block $case3$1.1
    (block $case2$1.1
     (block $case1$1.1
      (block $case0$1.1
       (set_local $1
        (get_local $0)
       )
       (br_if $case1$1.1
        (i32.eq
         (get_local $1)
         (i32.const 1)
        )
       )
       (br_if $case2$1.1
        (i32.eq
         (get_local $1)
         (i32.const 2)
        )
       )
       (br_if $case3$1.1
        (i32.eq
         (get_local $1)
         (i32.const 3)
        )
       )
       (br $case0$1.1)
      )
      (return
       (i32.const 0)
      )
     )
     (return
      (i32.const 1)
     )
    )
   )
   (return
    (i32.const 23)
   )
  )
 )
 (func $switch/doSwitchDefaultOmitted (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $break$1.1
   (block $case2$1.1
    (block $case1$1.1
     (block $case0$1.1
      (set_local $1
       (get_local $0)
      )
      (br_if $case0$1.1
       (i32.eq
        (get_local $1)
        (i32.const 1)
       )
      )
      (br_if $case1$1.1
       (i32.eq
        (get_local $1)
        (i32.const 2)
       )
      )
      (br_if $case2$1.1
       (i32.eq
        (get_local $1)
        (i32.const 3)
       )
      )
      (br $break$1.1)
     )
     (return
      (i32.const 1)
     )
    )
   )
   (return
    (i32.const 23)
   )
  )
  (return
   (i32.const 0)
  )
 )
)
(;
[program.elements]
  clz
  ctz
  popcnt
  rotl
  rotr
  abs
  ceil
  copysign
  floor
  max
  min
  nearest
  sqrt
  trunc
  current_memory
  grow_memory
  unreachable
  isNaN
  isFinite
  assert
  sizeof
  load
  store
  switch/doSwitch
  switch/doSwitchDefaultFirst
  switch/doSwitchDefaultOmitted
[program.exports]
  switch/doSwitch
  switch/doSwitchDefaultFirst
  switch/doSwitchDefaultOmitted
;)
