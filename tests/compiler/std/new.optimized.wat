(module
 (type $ii (func (param i32) (result i32)))
 (type $ifv (func (param i32 f32)))
 (type $v (func))
 (global "$(lib)/allocator/arena/startOffset" (mut i32) (i32.const 0))
 (global "$(lib)/allocator/arena/offset" (mut i32) (i32.const 0))
 (global $std/new/aClass (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/allocator/arena/allocate_memory" (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.gt_u
    (tee_local $2
     (i32.and
      (i32.add
       (i32.add
        (tee_local $1
         (get_global "$(lib)/allocator/arena/offset")
        )
        (get_local $0)
       )
       (i32.const 7)
      )
      (i32.const -8)
     )
    )
    (i32.shl
     (tee_local $0
      (current_memory)
     )
     (i32.const 16)
    )
   )
   (if
    (i32.lt_s
     (grow_memory
      (select
       (get_local $0)
       (tee_local $4
        (tee_local $3
         (i32.shr_u
          (i32.and
           (i32.add
            (i32.sub
             (get_local $2)
             (get_local $1)
            )
            (i32.const 65535)
           )
           (i32.const -65536)
          )
          (i32.const 16)
         )
        )
       )
       (i32.gt_s
        (get_local $0)
        (get_local $4)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $3)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (set_global "$(lib)/allocator/arena/offset"
   (get_local $2)
  )
  (get_local $1)
 )
 (func $std/new/AClass#constructor (; 1 ;) (type $ifv) (param $0 i32) (param $1 f32)
  (i32.store
   (get_local $0)
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (f32.store offset=4
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start (; 2 ;) (type $v)
  (local $0 i32)
  (set_global "$(lib)/allocator/arena/startOffset"
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (i32.const 7)
    )
    (i32.const -8)
   )
  )
  (set_global "$(lib)/allocator/arena/offset"
   (get_global "$(lib)/allocator/arena/startOffset")
  )
  (set_global $std/new/aClass
   (block (result i32)
    (i32.store
     (tee_local $0
      (call "$(lib)/allocator/arena/allocate_memory"
       (i32.const 8)
      )
     )
     (i32.const 1)
    )
    (f32.store offset=4
     (get_local $0)
     (f32.const 2)
    )
    (call $std/new/AClass#constructor
     (get_local $0)
     (f32.const 3)
    )
    (get_local $0)
   )
  )
 )
)
