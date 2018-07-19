(module
 (type $iv (func (param i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $Infinity f64 (f64.const inf))
 (global $~lib/collector/itcm/State.INIT i32 (i32.const 0))
 (global $~lib/collector/itcm/State.IDLE i32 (i32.const 1))
 (global $~lib/collector/itcm/State.MARK i32 (i32.const 2))
 (global $~lib/collector/itcm/State.SWEEP i32 (i32.const 3))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/set1 (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/set2 (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/ManagedObject.SIZE i32 (i32.const 16))
 (global $~lib/collector/itcm/Flags.MASK i32 (i32.const 7))
 (global $~lib/collector/itcm/Flags.WHITE (mut i32) (i32.const 0))
 (global $std/gc/obj (mut i32) (i32.const 0))
 (global $std/gc/head (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 80))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $std/gc/MyObject_visit)
 (memory $0 1)
 (data (i32.const 8) "\16\00\00\00~\00l\00i\00b\00/\00c\00o\00l\00l\00e\00c\00t\00o\00r\00/\00i\00t\00c\00m\00.\00t\00s\00")
 (data (i32.const 56) "\t\00\00\00s\00t\00d\00/\00g\00c\00.\00t\00s\00")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
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
 (func $~lib/collector/itcm/ManagedObject#makeWhite (; 4 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (i32.or
    (i32.and
     (i32.load
      (get_local $0)
     )
     (i32.xor
      (get_global $~lib/collector/itcm/Flags.MASK)
      (i32.const -1)
     )
    )
    (get_global $~lib/collector/itcm/Flags.WHITE)
   )
  )
 )
 (func $~lib/collector/itcm/ManagedObject#set:next (; 5 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (get_local $0)
   (i32.or
    (get_local $1)
    (i32.and
     (i32.load
      (get_local $0)
     )
     (get_global $~lib/collector/itcm/Flags.MASK)
    )
   )
  )
 )
 (func $~lib/collector/itcm/ManagedObject#insert (; 6 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/collector/itcm/gc.alloc (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.le_u
     (get_local $0)
     (i32.sub
      (get_global $~lib/internal/allocator/MAX_SIZE_32)
      (get_global $~lib/collector/itcm/ManagedObject.SIZE)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 214)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (call $~lib/memory/memory.allocate
    (i32.add
     (get_global $~lib/collector/itcm/ManagedObject.SIZE)
     (get_local $0)
    )
   )
  )
  (call $~lib/collector/itcm/ManagedObject#makeWhite
   (get_local $2)
  )
  (i32.store offset=8
   (get_local $2)
   (get_local $1)
  )
  (call $~lib/collector/itcm/ManagedObject#insert
   (get_global $~lib/collector/itcm/set1)
   (get_local $2)
  )
  (i32.add
   (get_local $2)
   (get_global $~lib/collector/itcm/ManagedObject.SIZE)
  )
 )
 (func $start (; 8 ;) (type $v)
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
   (call $~lib/collector/itcm/gc.alloc
    (i32.const 4)
    (i32.const 0)
   )
  )
  (i32.store
   (get_global $std/gc/obj)
   (i32.const 123)
  )
  (set_global $std/gc/head
   (i32.sub
    (get_global $std/gc/obj)
    (i32.const 16)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load
      (get_global $std/gc/head)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 56)
     (i32.const 16)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_global $std/gc/head)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 56)
     (i32.const 17)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=8
      (get_global $std/gc/head)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 56)
     (i32.const 18)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=12
      (get_global $std/gc/head)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 56)
     (i32.const 19)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=16
      (get_global $std/gc/head)
     )
     (i32.const 123)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 56)
     (i32.const 21)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
