(module
 (type $iv (func (param i32)))
 (memory $0 1)
 (data (i32.const 4) "\08\00\00\00")
 (export "loopWhile" (func $while/loopWhile))
 (export "loopWhileInWhile" (func $while/loopWhileInWhile))
 (export "memory" (memory $0))
 (func $while/loopWhile (; 0 ;) (type $iv) (param $0 i32)
  (block $break$1.1
   (loop $continue$1.1
    (if
     (get_local $0)
     (block
      (block
       (set_local $0
        (i32.sub
         (get_local $0)
         (i32.const 1)
        )
       )
      )
      (br $continue$1.1)
     )
    )
   )
  )
 )
 (func $while/loopWhileInWhile (; 1 ;) (type $iv) (param $0 i32)
  (block $break$1.1
   (loop $continue$1.1
    (if
     (get_local $0)
     (block
      (block
       (set_local $0
        (i32.sub
         (get_local $0)
         (i32.const 1)
        )
       )
       (block $break$1.2
        (loop $continue$1.2
         (if
          (get_local $0)
          (block
           (block
            (set_local $0
             (i32.sub
              (get_local $0)
              (i32.const 1)
             )
            )
           )
           (br $continue$1.2)
          )
         )
        )
       )
      )
      (br $continue$1.1)
     )
    )
   )
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
  isNaN
  isFinite
  while/loopWhile
  while/loopWhileInWhile
[program.exports]
  while/loopWhile
  while/loopWhileInWhile
;)
