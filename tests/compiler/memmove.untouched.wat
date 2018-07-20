(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $memmove/base i32 (i32.const 8))
 (global $memmove/dest (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 32))
 (memory $0 1)
 (data (i32.const 8) "\n\00\00\00m\00e\00m\00m\00o\00v\00e\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $memmove/memmove (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (get_local $0)
  )
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (get_local $3)
   )
  )
  (if
   (i32.lt_u
    (get_local $0)
    (get_local $1)
   )
   (block
    (if
     (i32.eq
      (i32.rem_u
       (get_local $1)
       (i32.const 8)
      )
      (i32.rem_u
       (get_local $0)
       (i32.const 8)
      )
     )
     (block
      (block $break|0
       (loop $continue|0
        (if
         (i32.rem_u
          (get_local $0)
          (i32.const 8)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return
             (get_local $3)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 1)
            )
           )
           (i32.store8
            (block (result i32)
             (set_local $4
              (get_local $0)
             )
             (set_local $0
              (i32.add
               (get_local $4)
               (i32.const 1)
              )
             )
             (get_local $4)
            )
            (i32.load8_u
             (block (result i32)
              (set_local $4
               (get_local $1)
              )
              (set_local $1
               (i32.add
                (get_local $4)
                (i32.const 1)
               )
              )
              (get_local $4)
             )
            )
           )
          )
          (br $continue|0)
         )
        )
       )
      )
      (block $break|1
       (loop $continue|1
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (i64.store
            (get_local $0)
            (i64.load
             (get_local $1)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
          )
          (br $continue|1)
         )
        )
       )
      )
     )
    )
    (block $break|2
     (loop $continue|2
      (if
       (get_local $2)
       (block
        (block
         (i32.store8
          (block (result i32)
           (set_local $4
            (get_local $0)
           )
           (set_local $0
            (i32.add
             (get_local $4)
             (i32.const 1)
            )
           )
           (get_local $4)
          )
          (i32.load8_u
           (block (result i32)
            (set_local $4
             (get_local $1)
            )
            (set_local $1
             (i32.add
              (get_local $4)
              (i32.const 1)
             )
            )
            (get_local $4)
           )
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (br $continue|2)
       )
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.rem_u
       (get_local $1)
       (i32.const 8)
      )
      (i32.rem_u
       (get_local $0)
       (i32.const 8)
      )
     )
     (block
      (block $break|3
       (loop $continue|3
        (if
         (i32.rem_u
          (i32.add
           (get_local $0)
           (get_local $2)
          )
          (i32.const 8)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return
             (get_local $3)
            )
           )
           (i32.store8
            (i32.add
             (get_local $0)
             (tee_local $2
              (i32.sub
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            (i32.load8_u
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|3)
         )
        )
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (i64.store
            (i32.add
             (get_local $0)
             (get_local $2)
            )
            (i64.load
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
     )
    )
    (block $break|5
     (loop $continue|5
      (if
       (get_local $2)
       (block
        (i32.store8
         (i32.add
          (get_local $0)
          (tee_local $2
           (i32.sub
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         (i32.load8_u
          (i32.add
           (get_local $1)
           (get_local $2)
          )
         )
        )
        (br $continue|5)
       )
      )
     )
    )
   )
  )
  (get_local $3)
 )
 (func $start (; 2 ;) (type $v)
  (i64.store
   (get_global $memmove/base)
   (i64.const 1229782938247303441)
  )
  (i64.store
   (i32.add
    (get_global $memmove/base)
    (i32.const 8)
   )
   (i64.const 2459565876494606882)
  )
  (i64.store
   (i32.add
    (get_global $memmove/base)
    (i32.const 16)
   )
   (i64.const 3689348814741910323)
  )
  (i64.store
   (i32.add
    (get_global $memmove/base)
    (i32.const 24)
   )
   (i64.const 4919131752989213764)
  )
  (set_global $memmove/dest
   (call $memmove/memmove
    (i32.add
     (get_global $memmove/base)
     (i32.const 1)
    )
    (i32.add
     (get_global $memmove/base)
     (i32.const 16)
    )
    (i32.const 4)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $memmove/dest)
     (i32.add
      (get_global $memmove/base)
      (i32.const 1)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 55)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (get_global $memmove/base)
     )
     (i64.const 1229783084848853777)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 56)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $memmove/dest
   (call $memmove/memmove
    (get_global $memmove/base)
    (get_global $memmove/base)
    (i32.const 32)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $memmove/dest)
     (get_global $memmove/base)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 59)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (get_global $memmove/base)
     )
     (i64.const 1229783084848853777)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 60)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (get_global $memmove/base)
       (i32.const 8)
      )
     )
     (i64.const 2459565876494606882)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 61)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (get_global $memmove/base)
       (i32.const 16)
      )
     )
     (i64.const 3689348814741910323)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 62)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (get_global $memmove/base)
       (i32.const 24)
      )
     )
     (i64.const 4919131752989213764)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 63)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $memmove/dest
   (call $memmove/memmove
    (i32.add
     (get_global $memmove/base)
     (i32.const 5)
    )
    (i32.add
     (get_global $memmove/base)
     (i32.const 28)
    )
    (i32.const 3)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (get_global $memmove/base)
     )
     (i64.const 4919131679688438545)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 66)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $memmove/dest
   (call $memmove/memmove
    (i32.add
     (get_global $memmove/base)
     (i32.const 8)
    )
    (i32.add
     (get_global $memmove/base)
     (i32.const 16)
    )
    (i32.const 15)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (get_global $memmove/base)
     )
     (i64.const 4919131679688438545)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 69)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (get_global $memmove/base)
       (i32.const 8)
      )
     )
     (i64.const 3689348814741910323)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 70)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (get_global $memmove/base)
       (i32.const 16)
      )
     )
     (i64.const 3694152654344438852)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 71)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.load
      (i32.add
       (get_global $memmove/base)
       (i32.const 24)
      )
     )
     (i64.const 4919131752989213764)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 72)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
