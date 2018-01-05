(module
 (type $v (func))
 (global $comma/a (mut i32) (i32.const 0))
 (global $comma/b (mut i32) (i32.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (set_global $comma/b
   (block (result i32)
    (set_global $comma/a
     (i32.add
      (tee_local $0
       (get_global $comma/a)
      )
      (i32.const 1)
     )
    )
    (get_local $0)
   )
  )
  (if
   (i32.ne
    (get_global $comma/a)
    (i32.const 1)
   )
   (unreachable)
  )
  (if
   (get_global $comma/b)
   (unreachable)
  )
  (set_global $comma/a
   (i32.add
    (get_global $comma/a)
    (i32.const 1)
   )
  )
  (set_global $comma/b
   (get_global $comma/a)
  )
  (if
   (i32.ne
    (get_global $comma/a)
    (i32.const 2)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (get_global $comma/b)
    (i32.const 2)
   )
   (unreachable)
  )
  (set_global $comma/a
   (block (result i32)
    (set_global $comma/b
     (i32.const 0)
    )
    (get_global $comma/b)
   )
  )
  (set_global $comma/b
   (block (result i32)
    (set_global $comma/a
     (i32.add
      (get_global $comma/a)
      (i32.const 1)
     )
    )
    (get_global $comma/a)
   )
  )
  (if
   (i32.ne
    (get_global $comma/a)
    (i32.const 1)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (get_global $comma/b)
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $comma/a
   (block (result i32)
    (set_global $comma/a
     (i32.add
      (get_global $comma/a)
      (i32.const 1)
     )
    )
    (set_global $comma/b
     (get_global $comma/a)
    )
    (get_global $comma/b)
   )
  )
  (if
   (i32.ne
    (get_global $comma/a)
    (i32.const 2)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (get_global $comma/b)
    (i32.const 2)
   )
   (unreachable)
  )
  (set_local $0
   (i32.const 0)
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $0)
     (get_global $comma/a)
    )
    (block
     (set_global $comma/a
      (i32.sub
       (get_global $comma/a)
       (i32.const 1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (if
   (i32.ne
    (get_local $0)
    (i32.const 1)
   )
   (unreachable)
  )
 )
)
