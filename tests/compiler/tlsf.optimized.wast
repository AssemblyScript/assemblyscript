(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (memory $0 1)
 (export "control$construct" (func $tlsf/control$construct))
 (export "memory" (memory $0))
 (start $start)
 (func $tlsf/fls (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (select
   (i32.sub
    (i32.const 31)
    (i32.clz
     (get_local $0)
    )
   )
   (i32.const -1)
   (get_local $0)
  )
 )
 (func $tlsf/ffs (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (select
   (i32.ctz
    (get_local $0)
   )
   (i32.const -1)
   (get_local $0)
  )
 )
 (func $tlsf/control$set_block (; 2 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.const 23)
   )
   (unreachable)
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 32)
   )
   (unreachable)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $0)
     (i32.const 112)
    )
    (i32.mul
     (i32.add
      (i32.mul
       (get_local $1)
       (i32.const 32)
      )
      (get_local $2)
     )
     (i32.const 4)
    )
   )
   (get_local $3)
  )
 )
 (func $tlsf/control$construct (; 3 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (i32.store
   (i32.add
    (tee_local $3
     (get_local $0)
    )
    (i32.const 8)
   )
   (tee_local $1
    (get_local $0)
   )
  )
  (i32.store
   (i32.add
    (tee_local $3
     (get_local $0)
    )
    (i32.const 12)
   )
   (tee_local $1
    (get_local $0)
   )
  )
  (i32.store
   (i32.add
    (tee_local $1
     (get_local $0)
    )
    (i32.const 16)
   )
   (i32.const 0)
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $2)
     (i32.const 23)
    )
    (block
     (set_local $3
      (get_local $0)
     )
     (if
      (i32.ge_u
       (tee_local $1
        (get_local $2)
       )
       (i32.const 23)
      )
      (unreachable)
     )
     (i32.store
      (i32.add
       (i32.add
        (get_local $3)
        (i32.const 20)
       )
       (i32.mul
        (get_local $1)
        (i32.const 4)
       )
      )
      (i32.const 0)
     )
     (set_local $1
      (i32.const 0)
     )
     (loop $continue|1
      (if
       (i32.lt_u
        (get_local $1)
        (i32.const 32)
       )
       (block
        (call $tlsf/control$set_block
         (get_local $0)
         (get_local $2)
         (get_local $1)
         (get_local $0)
        )
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $start (; 4 ;) (type $v)
  (if
   (i32.ne
    (call $tlsf/fls
     (i32.const 0)
    )
    (i32.const -1)
   )
   (unreachable)
  )
  (if
   (call $tlsf/fls
    (i32.const 1)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $tlsf/fls
     (i32.const -2147483640)
    )
    (i32.const 31)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $tlsf/fls
     (i32.const 2147483647)
    )
    (i32.const 30)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $tlsf/ffs
     (i32.const 0)
    )
    (i32.const -1)
   )
   (unreachable)
  )
  (if
   (call $tlsf/ffs
    (i32.const 1)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $tlsf/ffs
     (i32.const -2147483648)
    )
    (i32.const 31)
   )
   (unreachable)
  )
  (call $tlsf/control$construct
   (i32.load
    (i32.const 4)
   )
  )
 )
)
