(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
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
 (memory $0 0)
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (get_global $~lib/internal/allocator/MAX_SIZE_32)
   )
   (unreachable)
  )
  (set_local $1
   (get_global $~lib/allocator/arena/offset)
  )
  (set_local $4
   (i32.and
    (i32.add
     (i32.add
      (get_local $1)
      (select
       (tee_local $2
        (get_local $0)
       )
       (tee_local $3
        (i32.const 1)
       )
       (i32.gt_u
        (get_local $2)
        (get_local $3)
       )
      )
     )
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_local $5
   (current_memory)
  )
  (if
   (i32.gt_u
    (get_local $4)
    (i32.shl
     (get_local $5)
     (i32.const 16)
    )
   )
   (block
    (set_local $2
     (i32.shr_u
      (i32.and
       (i32.add
        (i32.sub
         (get_local $4)
         (get_local $1)
        )
        (i32.const 65535)
       )
       (i32.xor
        (i32.const 65535)
        (i32.const -1)
       )
      )
      (i32.const 16)
     )
    )
    (set_local $3
     (select
      (tee_local $3
       (get_local $5)
      )
      (tee_local $6
       (get_local $2)
      )
      (i32.gt_s
       (get_local $3)
       (get_local $6)
      )
     )
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $3)
      )
      (i32.const 0)
     )
     (if
      (i32.lt_s
       (grow_memory
        (get_local $2)
       )
       (i32.const 0)
      )
      (unreachable)
     )
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_local $4)
  )
  (get_local $1)
 )
 (func $~lib/memory/memory.allocate (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/allocator/arena/__memory_allocate
    (get_local $0)
   )
  )
 )
 (func $std/constructor/EmptyCtor#constructor (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $1
       (call $~lib/memory/memory.allocate
        (i32.const 0)
       )
      )
      (get_local $1)
     )
    )
   )
  )
 )
 (func $std/constructor/EmptyCtorWithFieldInit#constructor (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $1
       (call $~lib/memory/memory.allocate
        (i32.const 4)
       )
      )
      (i32.store
       (get_local $1)
       (i32.const 1)
      )
      (get_local $1)
     )
    )
   )
  )
 )
 (func $std/constructor/EmptyCtorWithFieldNoInit#constructor (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $1
       (call $~lib/memory/memory.allocate
        (i32.const 4)
       )
      )
      (i32.store
       (get_local $1)
       (i32.const 0)
      )
      (get_local $1)
     )
    )
   )
  )
 )
 (func $std/constructor/CtorReturns#constructor (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $~lib/memory/memory.allocate|inlined.0 (result i32)
   (set_local $1
    (i32.const 0)
   )
   (br $~lib/memory/memory.allocate|inlined.0
    (call $~lib/allocator/arena/__memory_allocate
     (get_local $1)
    )
   )
  )
 )
 (func $std/constructor/CtorConditionallyReturns#constructor (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (get_global $std/constructor/b)
   (return
    (block $~lib/memory/memory.allocate|inlined.1 (result i32)
     (set_local $1
      (i32.const 0)
     )
     (br $~lib/memory/memory.allocate|inlined.1
      (call $~lib/allocator/arena/__memory_allocate
       (get_local $1)
      )
     )
    )
   )
  )
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $1
       (call $~lib/memory/memory.allocate
        (i32.const 0)
       )
      )
      (get_local $1)
     )
    )
   )
  )
 )
 (func $std/constructor/CtorAllocates#constructor (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (drop
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 0)
        )
       )
       (get_local $1)
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $std/constructor/CtorConditionallyAllocates#constructor (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (get_global $std/constructor/b)
   (drop
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $1
         (call $~lib/memory/memory.allocate
          (i32.const 0)
         )
        )
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $1
       (call $~lib/memory/memory.allocate
        (i32.const 0)
       )
      )
      (get_local $1)
     )
    )
   )
  )
 )
 (func $start (; 9 ;) (type $v)
  (local $0 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
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
   (block (result i32)
    (set_local $0
     (call $~lib/memory/memory.allocate
      (i32.const 0)
     )
    )
    (get_local $0)
   )
  )
  (set_global $std/constructor/justFieldInit
   (block (result i32)
    (set_local $0
     (call $~lib/memory/memory.allocate
      (i32.const 4)
     )
    )
    (i32.store
     (get_local $0)
     (i32.const 1)
    )
    (get_local $0)
   )
  )
  (set_global $std/constructor/justFieldNoInit
   (block (result i32)
    (set_local $0
     (call $~lib/memory/memory.allocate
      (i32.const 4)
     )
    )
    (i32.store
     (get_local $0)
     (i32.const 0)
    )
    (get_local $0)
   )
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
   (call $std/constructor/CtorAllocates#constructor
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
