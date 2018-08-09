(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/TRACE i32 (i32.const 0))
 (global $~lib/collector/itcm/HEADER_SIZE i32 (i32.const 16))
 (global $~lib/collector/itcm/State.INIT i32 (i32.const 0))
 (global $~lib/collector/itcm/State.IDLE i32 (i32.const 1))
 (global $~lib/collector/itcm/State.MARK i32 (i32.const 2))
 (global $~lib/collector/itcm/State.SWEEP i32 (i32.const 3))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/gc-object/obj (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (table 3 3 anyfunc)
 (elem (i32.const 0) $~lib/collector/itcm/__gc_mark $std/gc-object/Custom~gc $std/gc-object/Base~gc)
 (memory $0 0)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $std/gc-object/main))
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
 (func $~lib/collector/itcm/ManagedObjectList#clear (; 1 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (get_local $0)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $0)
  )
 )
 (func $~lib/collector/itcm/ManagedObject#get:color (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (i32.and
   (i32.load
    (get_local $0)
   )
   (i32.const 3)
  )
 )
 (func $~lib/collector/itcm/ManagedObject#get:next (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (i32.and
   (i32.load
    (get_local $0)
   )
   (i32.xor
    (i32.const 3)
    (i32.const -1)
   )
  )
 )
 (func $~lib/collector/itcm/ManagedObject#set:next (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (get_local $0)
   (i32.or
    (get_local $1)
    (i32.and
     (i32.load
      (get_local $0)
     )
     (i32.const 3)
    )
   )
  )
 )
 (func $~lib/collector/itcm/ManagedObject#unlink (; 5 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $~lib/collector/itcm/ManagedObject#get:next
    (get_local $0)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (i32.store offset=4
   (get_local $1)
   (get_local $2)
  )
  (call $~lib/collector/itcm/ManagedObject#set:next
   (get_local $2)
   (get_local $1)
  )
 )
 (func $~lib/collector/itcm/ManagedObjectList#push (; 6 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $~lib/collector/itcm/ManagedObject#set:next
   (get_local $1)
   (get_local $0)
  )
  (i32.store offset=4
   (get_local $1)
   (get_local $2)
  )
  (call $~lib/collector/itcm/ManagedObject#set:next
   (get_local $2)
   (get_local $1)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 7 ;) (type $iv) (param $0 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_global $~lib/collector/itcm/iter)
   )
   (set_global $~lib/collector/itcm/iter
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  (call $~lib/collector/itcm/ManagedObject#unlink
   (get_local $0)
  )
  (call $~lib/collector/itcm/ManagedObjectList#push
   (get_global $~lib/collector/itcm/toSpace)
   (get_local $0)
  )
  (i32.store
   (get_local $0)
   (i32.or
    (i32.and
     (i32.load
      (get_local $0)
     )
     (i32.xor
      (i32.const 3)
      (i32.const -1)
     )
    )
    (i32.const 2)
   )
  )
 )
 (func $~lib/collector/itcm/__gc_mark (; 8 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (if
   (get_local $0)
   (block
    (set_local $1
     (block $~lib/collector/itcm/refToObj|inlined.0 (result i32)
      (i32.sub
       (get_local $0)
       (get_global $~lib/collector/itcm/HEADER_SIZE)
      )
     )
    )
    (if
     (i32.eq
      (call $~lib/collector/itcm/ManagedObject#get:color
       (get_local $1)
      )
      (get_global $~lib/collector/itcm/white)
     )
     (call $~lib/collector/itcm/ManagedObject#makeGray
      (get_local $1)
     )
    )
   )
  )
 )
 (func $~lib/collector/itcm/ManagedObject#set:color (; 9 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (get_local $0)
   (i32.or
    (i32.and
     (i32.load
      (get_local $0)
     )
     (i32.xor
      (i32.const 3)
      (i32.const -1)
     )
    )
    (get_local $1)
   )
  )
 )
 (func $~lib/allocator/arena/__memory_free (; 10 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/collector/itcm/step (; 11 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (block $break|0
   (block $case3|0
    (block $case2|0
     (block $case1|0
      (block $case0|0
       (set_local $1
        (get_global $~lib/collector/itcm/state)
       )
       (br_if $case0|0
        (i32.eq
         (get_local $1)
         (get_global $~lib/collector/itcm/State.INIT)
        )
       )
       (br_if $case1|0
        (i32.eq
         (get_local $1)
         (get_global $~lib/collector/itcm/State.IDLE)
        )
       )
       (br_if $case2|0
        (i32.eq
         (get_local $1)
         (get_global $~lib/collector/itcm/State.MARK)
        )
       )
       (br_if $case3|0
        (i32.eq
         (get_local $1)
         (get_global $~lib/collector/itcm/State.SWEEP)
        )
       )
       (br $break|0)
      )
      (block
       (set_global $~lib/collector/itcm/fromSpace
        (block $~lib/memory/memory.allocate|inlined.0 (result i32)
         (set_local $1
          (get_global $~lib/collector/itcm/HEADER_SIZE)
         )
         (br $~lib/memory/memory.allocate|inlined.0
          (call $~lib/allocator/arena/__memory_allocate
           (get_local $1)
          )
         )
        )
       )
       (i32.store offset=8
        (get_global $~lib/collector/itcm/fromSpace)
        (i32.const -1)
       )
       (call $~lib/collector/itcm/ManagedObjectList#clear
        (get_global $~lib/collector/itcm/fromSpace)
       )
       (set_global $~lib/collector/itcm/toSpace
        (block $~lib/memory/memory.allocate|inlined.1 (result i32)
         (set_local $1
          (get_global $~lib/collector/itcm/HEADER_SIZE)
         )
         (br $~lib/memory/memory.allocate|inlined.1
          (call $~lib/allocator/arena/__memory_allocate
           (get_local $1)
          )
         )
        )
       )
       (i32.store offset=8
        (get_global $~lib/collector/itcm/toSpace)
        (i32.const -1)
       )
       (call $~lib/collector/itcm/ManagedObjectList#clear
        (get_global $~lib/collector/itcm/toSpace)
       )
       (set_global $~lib/collector/itcm/iter
        (get_global $~lib/collector/itcm/toSpace)
       )
       (set_global $~lib/collector/itcm/state
        (get_global $~lib/collector/itcm/State.IDLE)
       )
      )
     )
     (block
      (call $~iterateRoots
       (i32.const 0)
      )
      (set_global $~lib/collector/itcm/state
       (get_global $~lib/collector/itcm/State.MARK)
      )
      (br $break|0)
     )
    )
    (block
     (set_local $0
      (call $~lib/collector/itcm/ManagedObject#get:next
       (get_global $~lib/collector/itcm/iter)
      )
     )
     (if
      (i32.ne
       (get_local $0)
       (get_global $~lib/collector/itcm/toSpace)
      )
      (block
       (set_global $~lib/collector/itcm/iter
        (get_local $0)
       )
       (call $~lib/collector/itcm/ManagedObject#set:color
        (get_local $0)
        (i32.eqz
         (get_global $~lib/collector/itcm/white)
        )
       )
       (set_global $~argc
        (i32.const 1)
       )
       (call_indirect (type $iv)
        (block $~lib/collector/itcm/objToRef|inlined.0 (result i32)
         (i32.add
          (get_local $0)
          (get_global $~lib/collector/itcm/HEADER_SIZE)
         )
        )
        (i32.load offset=8
         (get_local $0)
        )
       )
      )
      (block
       (call $~iterateRoots
        (i32.const 0)
       )
       (set_local $0
        (call $~lib/collector/itcm/ManagedObject#get:next
         (get_global $~lib/collector/itcm/iter)
        )
       )
       (if
        (i32.eq
         (get_local $0)
         (get_global $~lib/collector/itcm/toSpace)
        )
        (block
         (set_local $1
          (get_global $~lib/collector/itcm/fromSpace)
         )
         (set_global $~lib/collector/itcm/fromSpace
          (get_global $~lib/collector/itcm/toSpace)
         )
         (set_global $~lib/collector/itcm/toSpace
          (get_local $1)
         )
         (set_global $~lib/collector/itcm/white
          (i32.eqz
           (get_global $~lib/collector/itcm/white)
          )
         )
         (set_global $~lib/collector/itcm/iter
          (call $~lib/collector/itcm/ManagedObject#get:next
           (get_local $1)
          )
         )
         (set_global $~lib/collector/itcm/state
          (get_global $~lib/collector/itcm/State.SWEEP)
         )
        )
       )
      )
     )
     (br $break|0)
    )
   )
   (block
    (set_local $0
     (get_global $~lib/collector/itcm/iter)
    )
    (if
     (i32.ne
      (get_local $0)
      (get_global $~lib/collector/itcm/toSpace)
     )
     (block
      (set_global $~lib/collector/itcm/iter
       (call $~lib/collector/itcm/ManagedObject#get:next
        (get_local $0)
       )
      )
      (if
       (i32.ge_u
        (get_local $0)
        (get_global $HEAP_BASE)
       )
       (block $~lib/memory/memory.free|inlined.0
        (block
         (call $~lib/allocator/arena/__memory_free
          (get_local $0)
         )
         (br $~lib/memory/memory.free|inlined.0)
        )
       )
      )
     )
     (block
      (call $~lib/collector/itcm/ManagedObjectList#clear
       (get_global $~lib/collector/itcm/toSpace)
      )
      (set_global $~lib/collector/itcm/state
       (get_global $~lib/collector/itcm/State.IDLE)
      )
     )
    )
    (br $break|0)
   )
  )
 )
 (func $~lib/collector/itcm/__gc_allocate (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.sub
     (get_global $~lib/internal/allocator/MAX_SIZE_32)
     (get_global $~lib/collector/itcm/HEADER_SIZE)
    )
   )
   (unreachable)
  )
  (call $~lib/collector/itcm/step)
  (set_local $3
   (block $~lib/memory/memory.allocate|inlined.2 (result i32)
    (set_local $2
     (i32.add
      (get_global $~lib/collector/itcm/HEADER_SIZE)
      (get_local $0)
     )
    )
    (br $~lib/memory/memory.allocate|inlined.2
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $2)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $3)
   (get_local $1)
  )
  (call $~lib/collector/itcm/ManagedObject#set:color
   (get_local $3)
   (get_global $~lib/collector/itcm/white)
  )
  (call $~lib/collector/itcm/ManagedObjectList#push
   (get_global $~lib/collector/itcm/fromSpace)
   (get_local $3)
  )
  (block $~lib/collector/itcm/objToRef|inlined.1 (result i32)
   (i32.add
    (get_local $3)
    (get_global $~lib/collector/itcm/HEADER_SIZE)
   )
  )
 )
 (func $std/gc-object/Base~gc (; 13 ;) (type $iv) (param $0 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return)
  )
  (call $~lib/collector/itcm/__gc_mark
   (get_local $0)
  )
 )
 (func $std/gc-object/Custom~gc (; 14 ;) (type $iv) (param $0 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return)
  )
  (call_indirect (type $iv)
   (get_local $0)
   (i32.const 2)
  )
  (call $~lib/collector/itcm/__gc_mark
   (i32.load
    (get_local $0)
   )
  )
  (call $~lib/collector/itcm/__gc_mark
   (i32.load offset=4
    (get_local $0)
   )
  )
 )
 (func $~lib/collector/itcm/__gc_collect (; 15 ;) (type $v)
  (local $0 i32)
  (block $break|0
   (block $case1|0
    (block $case0|0
     (set_local $0
      (get_global $~lib/collector/itcm/state)
     )
     (br_if $case0|0
      (i32.eq
       (get_local $0)
       (get_global $~lib/collector/itcm/State.INIT)
      )
     )
     (br_if $case1|0
      (i32.eq
       (get_local $0)
       (get_global $~lib/collector/itcm/State.IDLE)
      )
     )
     (br $break|0)
    )
   )
   (call $~lib/collector/itcm/step)
  )
  (block $break|1
   (loop $continue|1
    (if
     (i32.ne
      (get_global $~lib/collector/itcm/state)
      (get_global $~lib/collector/itcm/State.IDLE)
     )
     (block
      (call $~lib/collector/itcm/step)
      (br $continue|1)
     )
    )
   )
  )
 )
 (func $~lib/gc/gc.collect (; 16 ;) (type $v)
  (call $~lib/collector/itcm/__gc_collect)
  (return)
 )
 (func $std/gc-object/main (; 17 ;) (type $v)
  (if
   (i32.eqz
    (get_global $~started)
   )
   (block
    (call $start)
    (set_global $~started
     (i32.const 1)
    )
   )
  )
 )
 (func $start (; 18 ;) (type $v)
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
  (set_global $~lib/collector/itcm/state
   (get_global $~lib/collector/itcm/State.INIT)
  )
  (set_global $std/gc-object/obj
   (block (result i32)
    (set_local $0
     (call $~lib/collector/itcm/__gc_allocate
      (i32.const 8)
      (i32.const 1)
     )
    )
    (i32.store
     (get_local $0)
     (i32.const 0)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.const 0)
    )
    (get_local $0)
   )
  )
  (call $~lib/gc/gc.collect)
  (i32.store
   (get_global $std/gc-object/obj)
   (get_global $std/gc-object/obj)
  )
  (call $~lib/gc/gc.collect)
  (set_global $std/gc-object/obj
   (i32.const 0)
  )
  (call $~lib/gc/gc.collect)
 )
 (func $~iterateRoots (; 19 ;) (type $iv) (param $0 i32)
  (call_indirect (type $iv)
   (get_global $std/gc-object/obj)
   (get_local $0)
  )
 )
)
