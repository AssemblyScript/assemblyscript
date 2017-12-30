(module
 (type $v (func))
 (global $do/n (mut i32) (i32.const 10))
 (global $do/m (mut i32) (i32.const 0))
 (global $do/o (mut i32) (i32.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (loop $continue|0
   (set_global $do/n
    (i32.sub
     (get_global $do/n)
     (i32.const 1)
    )
   )
   (set_global $do/m
    (i32.add
     (get_global $do/m)
     (i32.const 1)
    )
   )
   (br_if $continue|0
    (get_global $do/n)
   )
  )
  (if
   (get_global $do/n)
   (unreachable)
  )
  (if
   (i32.ne
    (get_global $do/m)
    (i32.const 10)
   )
   (unreachable)
  )
  (set_global $do/n
   (i32.const 10)
  )
  (loop $continue|1
   (set_global $do/n
    (i32.sub
     (tee_local $0
      (get_global $do/n)
     )
     (i32.const 1)
    )
   )
   (br_if $continue|1
    (get_local $0)
   )
  )
  (if
   (i32.ne
    (get_global $do/n)
    (i32.const -1)
   )
   (unreachable)
  )
  (set_global $do/n
   (i32.const 10)
  )
  (set_global $do/m
   (i32.const 0)
  )
  (loop $continue|2
   (set_global $do/n
    (i32.sub
     (get_global $do/n)
     (i32.const 1)
    )
   )
   (set_global $do/m
    (i32.add
     (get_global $do/m)
     (i32.const 1)
    )
   )
   (loop $continue|3
    (set_global $do/n
     (i32.sub
      (get_global $do/n)
      (i32.const 1)
     )
    )
    (set_global $do/o
     (i32.add
      (get_global $do/o)
      (i32.const 1)
     )
    )
    (br_if $continue|3
     (get_global $do/n)
    )
   )
   (if
    (get_global $do/n)
    (unreachable)
   )
   (if
    (i32.ne
     (get_global $do/o)
     (i32.const 9)
    )
    (unreachable)
   )
   (br_if $continue|2
    (get_global $do/n)
   )
  )
  (if
   (get_global $do/n)
   (unreachable)
  )
  (if
   (i32.ne
    (get_global $do/m)
    (i32.const 1)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (get_global $do/o)
    (i32.const 9)
   )
   (unreachable)
  )
 )
)
