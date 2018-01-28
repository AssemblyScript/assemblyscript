(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (global $std:heap/HEAP_OFFSET (mut i32) (i32.const 0))
 (global $std/new/aClass (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $std:heap/allocate_memory (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $1
   (current_memory)
  )
  (if
   (i32.gt_u
    (i32.add
     (get_global $std:heap/HEAP_OFFSET)
     (get_local $0)
    )
    (i32.shl
     (get_local $1)
     (i32.const 16)
    )
   )
   (if
    (i32.lt_s
     (grow_memory
      (select
       (tee_local $2
        (i32.trunc_s/f64
         (f64.ceil
          (f64.div
           (f64.convert_u/i32
            (get_local $0)
           )
           (f64.const 65536)
          )
         )
        )
       )
       (tee_local $1
        (i32.sub
         (i32.mul
          (get_local $1)
          (i32.const 2)
         )
         (get_local $1)
        )
       )
       (i32.gt_s
        (get_local $2)
        (get_local $1)
       )
      )
     )
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_local $1
   (get_global $std:heap/HEAP_OFFSET)
  )
  (if
   (block (result i32)
    (set_global $std:heap/HEAP_OFFSET
     (i32.add
      (get_global $std:heap/HEAP_OFFSET)
      (get_local $0)
     )
    )
    (i32.and
     (get_global $std:heap/HEAP_OFFSET)
     (i32.const 7)
    )
   )
   (set_global $std:heap/HEAP_OFFSET
    (i32.add
     (i32.or
      (get_global $std:heap/HEAP_OFFSET)
      (i32.const 7)
     )
     (i32.const 1)
    )
   )
  )
  (get_local $1)
 )
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_global $std:heap/HEAP_OFFSET
   (get_global $HEAP_BASE)
  )
  (set_global $std/new/aClass
   (block (result i32)
    (i32.store
     (tee_local $0
      (call $std:heap/allocate_memory
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
