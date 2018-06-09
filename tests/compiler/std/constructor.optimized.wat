(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/constructor/emptyCtor (mut i32) (i32.const 0))
 (global $std/constructor/emptyCtorWithFieldInit (mut i32) (i32.const 0))
 (global $std/constructor/emptyCtorWithFieldNoInit (mut i32) (i32.const 0))
 (global $std/constructor/none (mut i32) (i32.const 0))
 (global $std/constructor/justFieldInit (mut i32) (i32.const 0))
 (global $std/constructor/justFieldNoInit (mut i32) (i32.const 0))
 (global $std/constructor/ctorReturns (mut i32) (i32.const 0))
 (global $std/constructor/b (mut i32) (i32.const 1))
 (global $std/constructor/ctorConditionallyReturns (mut i32) (i32.const 0))
 (global $std/constructor/ctorAllocates (mut i32) (i32.const 0))
 (global $std/constructor/ctorConditionallyAllocates (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/allocate_memory (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (get_local $0)
   (block
    (if
     (i32.gt_u
      (get_local $0)
      (i32.const 1073741824)
     )
     (unreachable)
    )
    (if
     (i32.gt_u
      (tee_local $0
       (i32.and
        (i32.add
         (i32.add
          (tee_local $1
           (get_global $~lib/allocator/arena/offset)
          )
          (get_local $0)
         )
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
      (i32.shl
       (tee_local $2
        (current_memory)
       )
       (i32.const 16)
      )
     )
     (if
      (i32.lt_s
       (grow_memory
        (select
         (get_local $2)
         (tee_local $3
          (i32.shr_u
           (i32.and
            (i32.add
             (i32.sub
              (get_local $0)
              (get_local $1)
             )
             (i32.const 65535)
            )
            (i32.const -65536)
           )
           (i32.const 16)
          )
         )
         (i32.gt_s
          (get_local $2)
          (get_local $3)
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
    (set_global $~lib/allocator/arena/offset
     (get_local $0)
    )
    (return
     (get_local $1)
    )
   )
  )
  (i32.const 0)
 )
 (func $std/constructor/EmptyCtor#constructor (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (if (result i32)
   (get_local $0)
   (get_local $0)
   (call $~lib/allocator/arena/allocate_memory
    (i32.const 0)
   )
  )
 )
 (func $std/constructor/EmptyCtorWithFieldInit#constructor (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (i32.store
    (tee_local $0
     (call $~lib/allocator/arena/allocate_memory
      (i32.const 4)
     )
    )
    (i32.const 1)
   )
  )
  (get_local $0)
 )
 (func $std/constructor/EmptyCtorWithFieldNoInit#constructor (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (i32.store
    (tee_local $0
     (call $~lib/allocator/arena/allocate_memory
      (i32.const 4)
     )
    )
    (i32.const 0)
   )
  )
  (get_local $0)
 )
 (func $std/constructor/CtorReturns#constructor (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/allocator/arena/allocate_memory
   (i32.const 0)
  )
 )
 (func $std/constructor/CtorConditionallyReturns#constructor (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (get_global $std/constructor/b)
   (return
    (call $~lib/allocator/arena/allocate_memory
     (i32.const 0)
    )
   )
  )
  (if (result i32)
   (get_local $0)
   (get_local $0)
   (call $~lib/allocator/arena/allocate_memory
    (i32.const 0)
   )
  )
 )
 (func $std/constructor/CtorConditionallyAllocates#constructor (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (get_global $std/constructor/b)
   (if
    (i32.eqz
     (get_local $0)
    )
    (set_local $0
     (call $~lib/allocator/arena/allocate_memory
      (i32.const 0)
     )
    )
   )
  )
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (call $~lib/allocator/arena/allocate_memory
     (i32.const 0)
    )
   )
  )
  (get_local $0)
 )
 (func $start (; 7 ;) (type $v)
  (local $0 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (i32.const 7)
    )
    (i32.const -8)
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (set_global $std/constructor/emptyCtor
   (call $std/constructor/EmptyCtor#constructor
    (i32.const 0)
   )
  )
  (set_global $std/constructor/emptyCtorWithFieldInit
   (call $std/constructor/EmptyCtorWithFieldInit#constructor
    (i32.const 0)
   )
  )
  (set_global $std/constructor/emptyCtorWithFieldNoInit
   (call $std/constructor/EmptyCtorWithFieldNoInit#constructor
    (i32.const 0)
   )
  )
  (set_global $std/constructor/none
   (call $~lib/allocator/arena/allocate_memory
    (i32.const 0)
   )
  )
  (i32.store
   (tee_local $0
    (call $~lib/allocator/arena/allocate_memory
     (i32.const 4)
    )
   )
   (i32.const 1)
  )
  (set_global $std/constructor/justFieldInit
   (get_local $0)
  )
  (i32.store
   (tee_local $0
    (call $~lib/allocator/arena/allocate_memory
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (set_global $std/constructor/justFieldNoInit
   (get_local $0)
  )
  (set_global $std/constructor/ctorReturns
   (call $std/constructor/CtorReturns#constructor
    (i32.const 0)
   )
  )
  (set_global $std/constructor/ctorConditionallyReturns
   (call $std/constructor/CtorConditionallyReturns#constructor
    (i32.const 0)
   )
  )
  (set_global $std/constructor/ctorAllocates
   (call $std/constructor/EmptyCtor#constructor
    (i32.const 0)
   )
  )
  (set_global $std/constructor/ctorConditionallyAllocates
   (call $std/constructor/CtorConditionallyAllocates#constructor
    (i32.const 0)
   )
  )
 )
)
