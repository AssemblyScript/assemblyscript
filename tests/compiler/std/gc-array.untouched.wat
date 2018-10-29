(module
 (type $iv (func (param i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $i (func (result i32)))
 (memory $0 1)
 (data (i32.const 8) "\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 32) "\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00")
 (data (i32.const 56) "\00\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 104) "\00\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (table 7 anyfunc)
 (elem (i32.const 0) $null $~lib/arraybuffer/ArrayBuffer~gc $~lib/array/Array<Foo>~gc $~lib/collector/itcm/__gc_mark $std/gc-array/Foo~gc $~lib/string/String~gc $~lib/internal/arraybuffer/__gc)
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
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
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $std/gc-array/arr (mut i32) (i32.const 48))
 (global $~argc (mut i32) (i32.const 0))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~started (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 180))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $std/gc-array/main))
 (func $~lib/arraybuffer/ArrayBuffer~gc (; 1 ;) (type $iv) (param $0 i32)
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
 (func $~lib/array/Array<Foo>~gc (; 9 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (i32.load
    (get_local $0)
   )
  )
  (call $~lib/collector/itcm/__gc_mark
   (get_local $1)
  )
  (set_local $2
   (i32.const 0)
  )
  (set_local $3
   (i32.shl
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 2)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.lt_u
      (get_local $2)
      (get_local $3)
     )
     (block
      (block
       (call $~lib/collector/itcm/__gc_mark
        (i32.load offset=8
         (i32.add
          (get_local $1)
          (get_local $2)
         )
        )
       )
       (set_local $2
        (i32.add
         (get_local $2)
         (i32.const 4)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
 )
 (func $~lib/allocator/arena/__memory_allocate (; 10 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/collector/itcm/ManagedObjectList#clear (; 11 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (get_local $0)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $0)
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
 (func $~lib/collector/itcm/step (; 14 ;) (type $v)
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
       (i32.const 3)
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
        (i32.const 3)
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
 (func $~lib/collector/itcm/__gc_allocate (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/gc-array/Foo~gc (; 18 ;) (type $iv) (param $0 i32)
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
 (func $~lib/string/String~gc (; 19 ;) (type $iv) (param $0 i32)
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
 (func $~lib/internal/arraybuffer/computeSize (; 20 ;) (type $ii) (param $0 i32) (result i32)
  (i32.shl
   (i32.const 1)
   (i32.sub
    (i32.const 32)
    (i32.clz
     (i32.sub
      (i32.add
       (get_local $0)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/internal/memory/memset (; 21 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (if
   (i32.eqz
    (get_local $2)
   )
   (return)
  )
  (i32.store8
   (get_local $0)
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 1)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 2)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 1)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 3)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 6)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 3)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 4)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return)
  )
  (set_local $3
   (i32.and
    (i32.sub
     (i32.const 0)
     (get_local $0)
    )
    (i32.const 3)
   )
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.and
    (get_local $2)
    (i32.const -4)
   )
  )
  (set_local $4
   (i32.mul
    (i32.div_u
     (i32.const -1)
     (i32.const 255)
    )
    (i32.and
     (get_local $1)
     (i32.const 255)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 4)
   )
   (get_local $4)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 12)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 8)
   )
   (get_local $4)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 24)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 12)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 20)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 28)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 24)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 20)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 16)
   )
   (get_local $4)
  )
  (set_local $3
   (i32.add
    (i32.const 24)
    (i32.and
     (get_local $0)
     (i32.const 4)
    )
   )
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $5
   (i64.or
    (i64.extend_u/i32
     (get_local $4)
    )
    (i64.shl
     (i64.extend_u/i32
      (get_local $4)
     )
     (i64.const 32)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 32)
     )
     (block
      (block
       (i64.store
        (get_local $0)
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 24)
        )
        (get_local $5)
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 32)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/__gc (; 22 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 23 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (i32.le_u
     (get_local $0)
     (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 120)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $1
   (call $~lib/collector/itcm/__gc_allocate
    (call $~lib/internal/arraybuffer/computeSize
     (get_local $0)
    )
    (i32.const 6)
   )
  )
  (i32.store
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/internal/memory/memcpy (; 24 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (get_local $2)
      (i32.and
       (get_local $1)
       (i32.const 3)
      )
      (get_local $2)
     )
     (block
      (block
       (i32.store8
        (block (result i32)
         (set_local $0
          (i32.add
           (tee_local $5
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $1
           (i32.add
            (tee_local $5
             (get_local $1)
            )
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (get_local $0)
     (i32.const 3)
    )
    (i32.const 0)
   )
   (block
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 16)
       )
       (block
        (block
         (i32.store
          (get_local $0)
          (i32.load
           (get_local $1)
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 4)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 8)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 12)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 12)
           )
          )
         )
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 16)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 16)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 8)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 4)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 2)
     )
     (block
      (i32.store16
       (get_local $0)
       (i32.load16_u
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 2)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 2)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
     (i32.store8
      (block (result i32)
       (set_local $0
        (i32.add
         (tee_local $5
          (get_local $0)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $5
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
    )
    (return)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 32)
   )
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $5
        (i32.and
         (get_local $0)
         (i32.const 3)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $5)
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $5)
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $5)
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      (block
       (set_local $3
        (i32.load
         (get_local $1)
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $0
          (i32.add
           (tee_local $5
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $1
           (i32.add
            (tee_local $5
             (get_local $1)
            )
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $0
          (i32.add
           (tee_local $5
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $1
           (i32.add
            (tee_local $5
             (get_local $1)
            )
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $0
          (i32.add
           (tee_local $5
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $1
           (i32.add
            (tee_local $5
             (get_local $1)
            )
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 3)
        )
       )
       (block $break|3
        (loop $continue|3
         (if
          (i32.ge_u
           (get_local $2)
           (i32.const 17)
          )
          (block
           (block
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 1)
              )
             )
            )
            (i32.store
             (get_local $0)
             (i32.or
              (i32.shr_u
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 5)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 4)
             )
             (i32.or
              (i32.shr_u
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 9)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 8)
             )
             (i32.or
              (i32.shr_u
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 13)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 12)
             )
             (i32.or
              (i32.shr_u
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (set_local $1
             (i32.add
              (get_local $1)
              (i32.const 16)
             )
            )
            (set_local $0
             (i32.add
              (get_local $0)
              (i32.const 16)
             )
            )
            (set_local $2
             (i32.sub
              (get_local $2)
              (i32.const 16)
             )
            )
           )
           (br $continue|3)
          )
         )
        )
       )
       (br $break|2)
      )
     )
     (block
      (set_local $3
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $0
         (i32.add
          (tee_local $5
           (get_local $0)
          )
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $1
          (i32.add
           (tee_local $5
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $0
         (i32.add
          (tee_local $5
           (get_local $0)
          )
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $1
          (i32.add
           (tee_local $5
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 2)
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 18)
         )
         (block
          (block
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
           )
           (i32.store
            (get_local $0)
            (i32.or
             (i32.shr_u
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 6)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 4)
            )
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
              (i32.const 16)
             )
            )
           )
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 10)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
            (i32.or
             (i32.shr_u
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 14)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 12)
            )
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
              (i32.const 16)
             )
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 16)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 16)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 16)
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
      (br $break|2)
     )
    )
    (block
     (set_local $3
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (block (result i32)
       (set_local $0
        (i32.add
         (tee_local $5
          (get_local $0)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $5
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (block $break|5
      (loop $continue|5
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 19)
        )
        (block
         (block
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
          )
          (i32.store
           (get_local $0)
           (i32.or
            (i32.shr_u
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 7)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 4)
           )
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 11)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 8)
           )
           (i32.or
            (i32.shr_u
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 15)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 12)
           )
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (set_local $1
           (i32.add
            (get_local $1)
            (i32.const 16)
           )
          )
          (set_local $0
           (i32.add
            (get_local $0)
            (i32.const 16)
           )
          )
          (set_local $2
           (i32.sub
            (get_local $2)
            (i32.const 16)
           )
          )
         )
         (br $continue|5)
        )
       )
      )
     )
     (br $break|2)
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 16)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 8)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 4)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 2)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 1)
   )
   (i32.store8
    (block (result i32)
     (set_local $0
      (i32.add
       (tee_local $5
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (get_local $5)
    )
    (i32.load8_u
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $5
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
    )
   )
  )
 )
 (func $~lib/internal/memory/memmove (; 25 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (if
   (if (result i32)
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (get_local $0)
     )
    )
    (get_local $3)
    (i32.le_u
     (i32.add
      (get_local $0)
      (get_local $2)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/internal/memory/memcpy
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (return)
   )
  )
  (if
   (i32.lt_u
    (get_local $0)
    (get_local $1)
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (block $break|0
       (loop $continue|0
        (if
         (i32.and
          (get_local $0)
          (i32.const 7)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return)
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 1)
            )
           )
           (i32.store8
            (block (result i32)
             (set_local $0
              (i32.add
               (tee_local $3
                (get_local $0)
               )
               (i32.const 1)
              )
             )
             (get_local $3)
            )
            (i32.load8_u
             (block (result i32)
              (set_local $1
               (i32.add
                (tee_local $3
                 (get_local $1)
                )
                (i32.const 1)
               )
              )
              (get_local $3)
             )
            )
           )
          )
          (br $continue|0)
         )
        )
       )
      )
      (block $break|1
       (loop $continue|1
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (i64.store
            (get_local $0)
            (i64.load
             (get_local $1)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
          )
          (br $continue|1)
         )
        )
       )
      )
     )
    )
    (block $break|2
     (loop $continue|2
      (if
       (get_local $2)
       (block
        (block
         (i32.store8
          (block (result i32)
           (set_local $0
            (i32.add
             (tee_local $3
              (get_local $0)
             )
             (i32.const 1)
            )
           )
           (get_local $3)
          )
          (i32.load8_u
           (block (result i32)
            (set_local $1
             (i32.add
              (tee_local $3
               (get_local $1)
              )
              (i32.const 1)
             )
            )
            (get_local $3)
           )
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (br $continue|2)
       )
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (block $break|3
       (loop $continue|3
        (if
         (i32.and
          (i32.add
           (get_local $0)
           (get_local $2)
          )
          (i32.const 7)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return)
           )
           (i32.store8
            (i32.add
             (get_local $0)
             (tee_local $2
              (i32.sub
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            (i32.load8_u
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|3)
         )
        )
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (i64.store
            (i32.add
             (get_local $0)
             (get_local $2)
            )
            (i64.load
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
     )
    )
    (block $break|5
     (loop $continue|5
      (if
       (get_local $2)
       (block
        (i32.store8
         (i32.add
          (get_local $0)
          (tee_local $2
           (i32.sub
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         (i32.load8_u
          (i32.add
           (get_local $1)
           (get_local $2)
          )
         )
        )
        (br $continue|5)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.gt_s
    (get_local $1)
    (get_local $2)
   )
   (block
    (if
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 120)
       (i32.const 37)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (if
     (i32.le_s
      (get_local $1)
      (i32.sub
       (call $~lib/internal/arraybuffer/computeSize
        (get_local $2)
       )
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
     )
     (block
      (i32.store
       (get_local $0)
       (get_local $1)
      )
      (block $~lib/memory/memory.fill|inlined.0
       (set_local $3
        (i32.add
         (i32.add
          (get_local $0)
          (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
         )
         (get_local $2)
        )
       )
       (set_local $4
        (i32.const 0)
       )
       (set_local $5
        (i32.sub
         (get_local $1)
         (get_local $2)
        )
       )
       (call $~lib/internal/memory/memset
        (get_local $3)
        (get_local $4)
        (get_local $5)
       )
      )
     )
     (block
      (set_local $5
       (call $~lib/internal/arraybuffer/allocateUnsafe
        (get_local $1)
       )
      )
      (block $~lib/memory/memory.copy|inlined.0
       (set_local $4
        (i32.add
         (get_local $5)
         (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
        )
       )
       (set_local $3
        (i32.add
         (get_local $0)
         (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
        )
       )
       (call $~lib/internal/memory/memmove
        (get_local $4)
        (get_local $3)
        (get_local $2)
       )
      )
      (block $~lib/memory/memory.fill|inlined.1
       (set_local $3
        (i32.add
         (i32.add
          (get_local $5)
          (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
         )
         (get_local $2)
        )
       )
       (set_local $4
        (i32.const 0)
       )
       (set_local $6
        (i32.sub
         (get_local $1)
         (get_local $2)
        )
       )
       (call $~lib/internal/memory/memset
        (get_local $3)
        (get_local $4)
        (get_local $6)
       )
      )
      (return
       (get_local $5)
      )
     )
    )
   )
   (if
    (i32.lt_s
     (get_local $1)
     (get_local $2)
    )
    (block
     (if
      (i32.eqz
       (i32.ge_s
        (get_local $1)
        (i32.const 0)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 120)
        (i32.const 61)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (i32.store
      (get_local $0)
      (get_local $1)
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/collector/itcm/__gc_link (; 27 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (block $~lib/collector/itcm/refToObj|inlined.1 (result i32)
    (i32.sub
     (get_local $0)
     (get_global $~lib/collector/itcm/HEADER_SIZE)
    )
   )
  )
  (if
   (if (result i32)
    (tee_local $3
     (i32.eq
      (call $~lib/collector/itcm/ManagedObject#get:color
       (get_local $2)
      )
      (i32.eqz
       (get_global $~lib/collector/itcm/white)
      )
     )
    )
    (i32.eq
     (call $~lib/collector/itcm/ManagedObject#get:color
      (block $~lib/collector/itcm/refToObj|inlined.3 (result i32)
       (i32.sub
        (get_local $1)
        (get_global $~lib/collector/itcm/HEADER_SIZE)
       )
      )
     )
     (get_global $~lib/collector/itcm/white)
    )
    (get_local $3)
   )
   (call $~lib/collector/itcm/ManagedObject#makeGray
    (get_local $2)
   )
  )
 )
 (func $~lib/array/Array<Foo>#__set (; 28 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 72)
       (i32.const 101)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<Foo,Foo>|inlined.0
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
    (get_local $2)
   )
  )
  (call $~lib/collector/itcm/__gc_link
   (get_local $0)
   (get_local $2)
  )
 )
 (func $std/gc-array/main (; 29 ;) (type $i) (result i32)
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
 (func $start (; 30 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
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
  (call $~lib/gc/gc.collect)
  (call $~lib/array/Array<Foo>#__set
   (get_global $std/gc-array/arr)
   (i32.const 0)
   (block (result i32)
    (set_local $0
     (call $~lib/collector/itcm/__gc_allocate
      (i32.const 0)
      (i32.const 4)
     )
    )
    (get_local $0)
   )
  )
  (call $~lib/gc/gc.collect)
  (call $~lib/array/Array<Foo>#__set
   (get_global $std/gc-array/arr)
   (i32.const 1)
   (block (result i32)
    (set_local $1
     (call $~lib/collector/itcm/__gc_allocate
      (i32.const 0)
      (i32.const 4)
     )
    )
    (get_local $1)
   )
  )
  (call $~lib/gc/gc.collect)
  (call $~lib/array/Array<Foo>#__set
   (get_global $std/gc-array/arr)
   (i32.const 0)
   (block (result i32)
    (set_local $2
     (call $~lib/collector/itcm/__gc_allocate
      (i32.const 0)
      (i32.const 4)
     )
    )
    (get_local $2)
   )
  )
  (call $~lib/gc/gc.collect)
 )
 (func $null (; 31 ;) (type $v)
 )
 (func $~iterateRoots (; 32 ;) (type $iv) (param $0 i32)
  (call_indirect (type $iv)
   (get_global $std/gc-array/arr)
   (get_local $0)
  )
 )
)
