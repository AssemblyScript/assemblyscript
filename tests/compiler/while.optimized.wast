(module
 (type $v (func))
 (global $while/n (mut i32) (i32.const 10))
 (global $while/m (mut i32) (i32.const 0))
 (global $while/o (mut i32) (i32.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (loop $continue|0
   (if
    (get_global $while/n)
    (block
     (set_global $while/n
      (i32.sub
       (get_global $while/n)
       (i32.const 1)
      )
     )
     (set_global $while/m
      (i32.add
       (get_global $while/m)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (if
   (get_global $while/n)
   (unreachable)
  )
  (if
   (i32.ne
    (get_global $while/m)
    (i32.const 10)
   )
   (unreachable)
  )
  (set_global $while/n
   (i32.const 10)
  )
  (set_global $while/m
   (i32.const 0)
  )
  (loop $continue|1
   (if
    (get_global $while/n)
    (block
     (set_global $while/n
      (i32.sub
       (get_global $while/n)
       (i32.const 1)
      )
     )
     (set_global $while/m
      (i32.add
       (get_global $while/m)
       (i32.const 1)
      )
     )
     (loop $continue|2
      (if
       (get_global $while/n)
       (block
        (set_global $while/n
         (i32.sub
          (get_global $while/n)
          (i32.const 1)
         )
        )
        (set_global $while/o
         (i32.add
          (get_global $while/o)
          (i32.const 1)
         )
        )
        (br $continue|2)
       )
      )
     )
     (if
      (get_global $while/n)
      (unreachable)
     )
     (if
      (i32.ne
       (get_global $while/o)
       (i32.const 9)
      )
      (unreachable)
     )
     (br $continue|1)
    )
   )
  )
  (if
   (get_global $while/n)
   (unreachable)
  )
  (if
   (i32.ne
    (get_global $while/m)
    (i32.const 1)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (get_global $while/o)
    (i32.const 9)
   )
   (unreachable)
  )
  (set_global $while/n
   (i32.const 1)
  )
  (set_global $while/m
   (i32.const 0)
  )
  (loop $continue|3
   (br_if $continue|3
    (if (result i32)
     (block (result i32)
      (set_global $while/n
       (i32.sub
        (tee_local $0
         (get_global $while/n)
        )
        (i32.const 1)
       )
      )
      (tee_local $0
       (get_local $0)
      )
     )
     (block (result i32)
      (set_global $while/m
       (i32.add
        (get_global $while/m)
        (i32.const 1)
       )
      )
      (get_global $while/m)
     )
     (get_local $0)
    )
   )
  )
  (if
   (i32.ne
    (get_global $while/n)
    (i32.const -1)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (get_global $while/m)
    (i32.const 1)
   )
   (unreachable)
  )
 )
)
