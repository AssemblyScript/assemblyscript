(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (global $std:memory/arena/HEAP_OFFSET (mut i32) (i32.const 0))
 (global $std/new/aClass (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $std:memory/arena/allocate_memory (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.and
    (if (result i32)
     (i32.gt_u
      (tee_local $0
       (i32.and
        (i32.add
         (i32.add
          (tee_local $2
           (get_global $std:memory/arena/HEAP_OFFSET)
          )
          (get_local $0)
         )
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
      (tee_local $1
       (i32.shl
        (current_memory)
        (i32.const 16)
       )
      )
     )
     (i32.lt_s
      (grow_memory
       (select
        (tee_local $3
         (i32.shr_u
          (i32.sub
           (i32.and
            (i32.add
             (get_local $0)
             (i32.const 65535)
            )
            (i32.const -65536)
           )
           (get_local $1)
          )
          (i32.const 16)
         )
        )
        (tee_local $1
         (i32.shr_u
          (get_local $1)
          (i32.const 16)
         )
        )
        (i32.gt_u
         (get_local $3)
         (get_local $1)
        )
       )
      )
      (i32.const 0)
     )
     (i32.gt_u
      (get_local $0)
      (get_local $1)
     )
    )
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $std:memory/arena/HEAP_OFFSET
   (get_local $0)
  )
  (get_local $2)
 )
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_global $std:memory/arena/HEAP_OFFSET
   (get_global $HEAP_BASE)
  )
  (set_global $std/new/aClass
   (block (result i32)
    (i32.store
     (tee_local $0
      (call $std:memory/arena/allocate_memory
       (i32.const 8)
      )
     )
     (i32.const 1)
    )
    (f32.store offset=4
     (get_local $0)
     (f32.const 2)
    )
    (i32.store
     (tee_local $1
      (get_local $0)
     )
     (i32.add
      (i32.load
       (get_local $1)
      )
      (i32.const 1)
     )
    )
    (f32.store offset=4
     (get_local $1)
     (f32.const 3)
    )
    (get_local $0)
   )
  )
 )
)
