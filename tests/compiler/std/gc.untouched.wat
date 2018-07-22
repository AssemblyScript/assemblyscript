(module
 (type $iv (func (param i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/TRACE i32 (i32.const 0))
 (global $~lib/collector/itcm/State.INIT i32 (i32.const 0))
 (global $~lib/collector/itcm/State.IDLE i32 (i32.const 1))
 (global $~lib/collector/itcm/State.MARK i32 (i32.const 2))
 (global $~lib/collector/itcm/State.SWEEP i32 (i32.const 3))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/from (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/to (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/ManagedObject.SIZE i32 (i32.const 16))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/gc/obj (mut i32) (i32.const 0))
 (global $std/gc/obj2 (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 32))
 (table 2 2 anyfunc)
 (elem (i32.const 0) $std/gc/MyObject_visit $~lib/collector/itcm/__gc_mark)
 (memory $0 1)
 (data (i32.const 8) "\t\00\00\00s\00t\00d\00/\00g\00c\00.\00t\00s\00")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $std/gc/main))
 (func $std/gc/MyObject_visit (; 1 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (get_local $0)
   (block
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
    (set_local $2
     (i32.and
      (i32.add
       (i32.add
        (get_local $1)
        (get_local $0)
       )
       (get_global $~lib/internal/allocator/AL_MASK)
      )
      (i32.xor
       (get_global $~lib/internal/allocator/AL_MASK)
       (i32.const -1)
      )
     )
    )
    (set_local $3
     (current_memory)
    )
    (if
     (i32.gt_u
      (get_local $2)
      (i32.shl
       (get_local $3)
       (i32.const 16)
      )
     )
     (block
      (set_local $4
       (i32.shr_u
        (i32.and
         (i32.add
          (i32.sub
           (get_local $2)
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
      (set_local $5
       (select
        (tee_local $5
         (get_local $3)
        )
        (tee_local $6
         (get_local $4)
        )
        (i32.gt_s
         (get_local $5)
         (get_local $6)
        )
       )
      )
      (if
       (i32.lt_s
        (grow_memory
         (get_local $5)
        )
        (i32.const 0)
       )
       (if
        (i32.lt_s
         (grow_memory
          (get_local $4)
         )
         (i32.const 0)
        )
        (unreachable)
       )
      )
     )
    )
    (set_global $~lib/allocator/arena/offset
     (get_local $2)
    )
    (return
     (get_local $1)
    )
   )
  )
  (i32.const 0)
 )
 (func $~lib/memory/memory.allocate (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/allocator/arena/__memory_allocate
    (get_local $0)
   )
  )
 )
 (func $~lib/collector/itcm/ManagedObjectList#clear (; 4 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (get_local $0)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $0)
  )
 )
 (func $~lib/collector/itcm/ManagedObject#get:color (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (i32.and
   (i32.load
    (get_local $0)
   )
   (i32.const 3)
  )
 )
 (func $~lib/collector/itcm/ManagedObject#get:next (; 6 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/collector/itcm/ManagedObject#set:next (; 7 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/collector/itcm/ManagedObject#unlink (; 8 ;) (type $iv) (param $0 i32)
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
 (func $~lib/collector/itcm/ManagedObjectList#push (; 9 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 10 ;) (type $iv) (param $0 i32)
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
   (get_global $~lib/collector/itcm/to)
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
 (func $~lib/collector/itcm/__gc_mark (; 11 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (if
   (get_local $0)
   (block
    (set_local $1
     (block $~lib/collector/itcm/refToObj|inlined.0 (result i32)
      (i32.sub
       (get_local $0)
       (get_global $~lib/collector/itcm/ManagedObject.SIZE)
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
 (func $~lib/collector/itcm/ManagedObject#set:color (; 12 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/allocator/arena/__memory_free (; 13 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/memory/memory.free (; 14 ;) (type $iv) (param $0 i32)
  (call $~lib/allocator/arena/__memory_free
   (get_local $0)
  )
  (return)
 )
 (func $~lib/collector/itcm/step (; 15 ;) (type $v)
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
       (set_global $~lib/collector/itcm/from
        (call $~lib/memory/memory.allocate
         (get_global $~lib/collector/itcm/ManagedObject.SIZE)
        )
       )
       (i32.store offset=8
        (get_global $~lib/collector/itcm/from)
        (i32.const -1)
       )
       (call $~lib/collector/itcm/ManagedObjectList#clear
        (get_global $~lib/collector/itcm/from)
       )
       (set_global $~lib/collector/itcm/to
        (call $~lib/memory/memory.allocate
         (get_global $~lib/collector/itcm/ManagedObject.SIZE)
        )
       )
       (i32.store offset=8
        (get_global $~lib/collector/itcm/to)
        (i32.const -1)
       )
       (call $~lib/collector/itcm/ManagedObjectList#clear
        (get_global $~lib/collector/itcm/to)
       )
       (set_global $~lib/collector/itcm/iter
        (get_global $~lib/collector/itcm/to)
       )
       (set_global $~lib/collector/itcm/state
        (get_global $~lib/collector/itcm/State.IDLE)
       )
      )
     )
     (block
      (call $~iterateRoots
       (i32.const 1)
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
       (get_global $~lib/collector/itcm/to)
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
          (get_global $~lib/collector/itcm/ManagedObject.SIZE)
         )
        )
        (i32.load offset=8
         (get_local $0)
        )
       )
      )
      (block
       (call $~iterateRoots
        (i32.const 1)
       )
       (set_local $0
        (call $~lib/collector/itcm/ManagedObject#get:next
         (get_global $~lib/collector/itcm/iter)
        )
       )
       (if
        (i32.eq
         (get_local $0)
         (get_global $~lib/collector/itcm/to)
        )
        (block
         (set_local $1
          (get_global $~lib/collector/itcm/from)
         )
         (set_global $~lib/collector/itcm/from
          (get_global $~lib/collector/itcm/to)
         )
         (set_global $~lib/collector/itcm/to
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
      (get_global $~lib/collector/itcm/to)
     )
     (block
      (set_global $~lib/collector/itcm/iter
       (call $~lib/collector/itcm/ManagedObject#get:next
        (get_local $0)
       )
      )
      (call $~lib/memory/memory.free
       (get_local $0)
      )
     )
     (block
      (call $~lib/collector/itcm/ManagedObjectList#clear
       (get_global $~lib/collector/itcm/to)
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
 (func $~lib/collector/itcm/__gc_allocate (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.sub
     (get_global $~lib/internal/allocator/MAX_SIZE_32)
     (get_global $~lib/collector/itcm/ManagedObject.SIZE)
    )
   )
   (unreachable)
  )
  (call $~lib/collector/itcm/step)
  (set_local $2
   (call $~lib/memory/memory.allocate
    (i32.add
     (get_global $~lib/collector/itcm/ManagedObject.SIZE)
     (get_local $0)
    )
   )
  )
  (i32.store offset=8
   (get_local $2)
   (get_local $1)
  )
  (call $~lib/collector/itcm/ManagedObject#set:color
   (get_local $2)
   (get_global $~lib/collector/itcm/white)
  )
  (call $~lib/collector/itcm/ManagedObjectList#push
   (get_global $~lib/collector/itcm/from)
   (get_local $2)
  )
  (block $~lib/collector/itcm/objToRef|inlined.1 (result i32)
   (i32.add
    (get_local $2)
    (get_global $~lib/collector/itcm/ManagedObject.SIZE)
   )
  )
 )
 (func $~lib/gc/gc.allocate (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (call $~lib/collector/itcm/__gc_allocate
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $~lib/collector/itcm/__gc_collect (; 18 ;) (type $v)
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
 (func $~lib/gc/gc.collect (; 19 ;) (type $v)
  (call $~lib/collector/itcm/__gc_collect)
  (return)
 )
 (func $std/gc/main (; 20 ;) (type $i) (result i32)
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
  (i32.const 0)
 )
 (func $start (; 21 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  (set_global $std/gc/obj
   (call $~lib/gc/gc.allocate
    (i32.const 4)
    (i32.const 0)
   )
  )
  (i32.store
   (get_global $std/gc/obj)
   (i32.const 123)
  )
  (block
   (set_local $0
    (i32.sub
     (get_global $std/gc/obj)
     (i32.const 16)
    )
   )
   (set_local $1
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
   (set_local $2
    (i32.load offset=4
     (get_local $0)
    )
   )
   (if
    (i32.eqz
     (if (result i32)
      (tee_local $3
       (if (result i32)
        (tee_local $3
         (i32.ne
          (get_local $1)
          (i32.const 0)
         )
        )
        (i32.ne
         (get_local $2)
         (i32.const 0)
        )
        (get_local $3)
       )
      )
      (i32.eq
       (get_local $1)
       (get_local $2)
      )
      (get_local $3)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 19)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $3
    (i32.load offset=8
     (get_local $0)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (get_local $3)
      (i32.const 0)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 21)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $4
    (i32.load offset=12
     (get_local $0)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (get_local $4)
      (i32.const 0)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 23)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $5
    (i32.load offset=16
     (get_local $0)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (get_local $5)
      (i32.const 123)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 25)
      (i32.const 2)
     )
     (unreachable)
    )
   )
  )
  (call $~lib/gc/gc.collect)
  (set_global $std/gc/obj
   (i32.const 0)
  )
  (call $~lib/gc/gc.collect)
 )
 (func $~iterateRoots (; 22 ;) (type $iv) (param $0 i32)
  (call_indirect (type $iv)
   (get_global $std/gc/obj)
   (get_local $0)
  )
  (call_indirect (type $iv)
   (get_global $std/gc/obj2)
   (get_local $0)
  )
 )
)
