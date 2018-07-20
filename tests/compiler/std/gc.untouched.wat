(module
 (type $iv (func (param i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiFFFFFv (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $i (func (result i32)))
 (import "env" "trace" (func $~lib/env/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/TRACE i32 (i32.const 1))
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
 (global $std/gc/head (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 588))
 (table 2 2 anyfunc)
 (elem (i32.const 0) $std/gc/MyObject_visit $~lib/collector/itcm/markRoots~markRoot|1)
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00g\00c\00.\00a\00l\00l\00o\00c\00a\00t\00e\00")
 (data (i32.const 36) "\0c\00\00\00g\00c\00~\00s\00t\00e\00p\00/\00I\00N\00I\00T\00")
 (data (i32.const 64) "\08\00\00\00 \00 \00 \00c\00l\00e\00a\00r\00")
 (data (i32.const 84) "\0f\00\00\00g\00c\00~\00s\00t\00a\00t\00e\00 \00=\00 \00I\00D\00L\00E\00")
 (data (i32.const 120) "\0c\00\00\00g\00c\00~\00s\00t\00e\00p\00/\00I\00D\00L\00E\00")
 (data (i32.const 148) "\0c\00\00\00 \00 \00 \00m\00a\00r\00k\00R\00o\00o\00t\00s\00")
 (data (i32.const 176) "\0b\00\00\00 \00 \00 \00m\00a\00r\00k\00R\00o\00o\00t\00")
 (data (i32.const 204) "\07\00\00\00g\00c\00.\00m\00a\00r\00k\00")
 (data (i32.const 224) "\0b\00\00\00 \00 \00 \00m\00a\00k\00e\00G\00r\00a\00y\00")
 (data (i32.const 252) "\t\00\00\00 \00 \00 \00u\00n\00l\00i\00n\00k\00")
 (data (i32.const 276) "\07\00\00\00 \00 \00 \00p\00u\00s\00h\00")
 (data (i32.const 296) "\0f\00\00\00g\00c\00~\00s\00t\00a\00t\00e\00 \00=\00 \00M\00A\00R\00K\00")
 (data (i32.const 332) "\14\00\00\00g\00c\00~\00s\00t\00e\00p\00/\00M\00A\00R\00K\00 \00i\00t\00e\00r\00a\00t\00e\00")
 (data (i32.const 376) "\13\00\00\00g\00c\00~\00s\00t\00e\00p\00/\00M\00A\00R\00K\00 \00f\00i\00n\00i\00s\00h\00")
 (data (i32.const 420) "\10\00\00\00g\00c\00~\00s\00t\00a\00t\00e\00 \00=\00 \00S\00W\00E\00E\00P\00")
 (data (i32.const 456) "\12\00\00\00g\00c\00~\00s\00t\00e\00p\00/\00S\00W\00E\00E\00P\00 \00f\00r\00e\00e\00")
 (data (i32.const 496) "\14\00\00\00g\00c\00~\00s\00t\00e\00p\00/\00S\00W\00E\00E\00P\00 \00f\00i\00n\00i\00s\00h\00")
 (data (i32.const 540) "\t\00\00\00s\00t\00d\00/\00g\00c\00.\00t\00s\00")
 (data (i32.const 564) "\n\00\00\00g\00c\00.\00c\00o\00l\00l\00e\00c\00t\00")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $std/gc/main))
 (func $std/gc/MyObject_visit (; 2 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/allocator/arena/__memory_allocate (; 3 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.allocate (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/allocator/arena/__memory_allocate
    (get_local $0)
   )
  )
 )
 (func $~lib/collector/itcm/ManagedObject#clear (; 5 ;) (type $iv) (param $0 i32)
  (call $~lib/env/trace
   (i32.const 64)
   (i32.const 1)
   (f64.convert_u/i32
    (block $~lib/collector/itcm/objToRef|inlined.0 (result i32)
     (i32.add
      (get_local $0)
      (get_global $~lib/collector/itcm/ManagedObject.SIZE)
     )
    )
   )
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
  )
  (i32.store
   (get_local $0)
   (get_local $0)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $0)
  )
 )
 (func $~lib/collector/itcm/ManagedObject#get:color (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (i32.and
   (i32.load
    (get_local $0)
   )
   (i32.const 3)
  )
 )
 (func $~lib/collector/itcm/ManagedObject#get:next (; 7 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/collector/itcm/ManagedObject#set:next (; 8 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/collector/itcm/ManagedObject#unlink (; 9 ;) (type $iv) (param $0 i32)
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
  (call $~lib/env/trace
   (i32.const 252)
   (i32.const 3)
   (f64.convert_u/i32
    (block $~lib/collector/itcm/objToRef|inlined.2 (result i32)
     (i32.add
      (get_local $2)
      (get_global $~lib/collector/itcm/ManagedObject.SIZE)
     )
    )
   )
   (f64.convert_u/i32
    (block $~lib/collector/itcm/objToRef|inlined.3 (result i32)
     (i32.add
      (get_local $0)
      (get_global $~lib/collector/itcm/ManagedObject.SIZE)
     )
    )
   )
   (f64.convert_u/i32
    (block $~lib/collector/itcm/objToRef|inlined.4 (result i32)
     (i32.add
      (get_local $1)
      (get_global $~lib/collector/itcm/ManagedObject.SIZE)
     )
    )
   )
   (f64.const 0)
   (f64.const 0)
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
 (func $~lib/collector/itcm/ManagedObject#push (; 10 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $~lib/env/trace
   (i32.const 276)
   (i32.const 3)
   (f64.convert_u/i32
    (block $~lib/collector/itcm/objToRef|inlined.5 (result i32)
     (i32.add
      (get_local $2)
      (get_global $~lib/collector/itcm/ManagedObject.SIZE)
     )
    )
   )
   (f64.convert_u/i32
    (block $~lib/collector/itcm/objToRef|inlined.6 (result i32)
     (i32.add
      (get_local $1)
      (get_global $~lib/collector/itcm/ManagedObject.SIZE)
     )
    )
   )
   (f64.convert_u/i32
    (block $~lib/collector/itcm/objToRef|inlined.7 (result i32)
     (i32.add
      (get_local $0)
      (get_global $~lib/collector/itcm/ManagedObject.SIZE)
     )
    )
   )
   (f64.const 0)
   (f64.const 0)
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
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 11 ;) (type $iv) (param $0 i32)
  (call $~lib/env/trace
   (i32.const 224)
   (i32.const 1)
   (f64.convert_u/i32
    (block $~lib/collector/itcm/objToRef|inlined.1 (result i32)
     (i32.add
      (get_local $0)
      (get_global $~lib/collector/itcm/ManagedObject.SIZE)
     )
    )
   )
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
  )
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
  (call $~lib/collector/itcm/ManagedObject#push
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
 (func $~lib/collector/itcm/__gc_mark (; 12 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (call $~lib/env/trace
   (i32.const 204)
   (i32.const 1)
   (f64.convert_u/i32
    (get_local $0)
   )
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
  )
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
 (func $~lib/collector/itcm/markRoots~markRoot|1 (; 13 ;) (type $iv) (param $0 i32)
  (call $~lib/env/trace
   (i32.const 176)
   (i32.const 1)
   (f64.convert_u/i32
    (get_local $0)
   )
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
  )
  (if
   (get_local $0)
   (call $~lib/collector/itcm/__gc_mark
    (get_local $0)
   )
  )
 )
 (func $~lib/collector/itcm/markRoots (; 14 ;) (type $v)
  (call $~lib/env/trace
   (i32.const 148)
   (i32.const 0)
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
  )
  (call_indirect (type $iv)
   (get_global $std/gc/obj)
   (i32.const 1)
  )
 )
 (func $~lib/collector/itcm/ManagedObject#set:color (; 15 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/allocator/arena/__memory_free (; 16 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/memory/memory.free (; 17 ;) (type $iv) (param $0 i32)
  (call $~lib/allocator/arena/__memory_free
   (get_local $0)
  )
  (return)
 )
 (func $~lib/collector/itcm/step (; 18 ;) (type $v)
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
       (call $~lib/env/trace
        (i32.const 36)
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
       (set_global $~lib/collector/itcm/from
        (call $~lib/memory/memory.allocate
         (get_global $~lib/collector/itcm/ManagedObject.SIZE)
        )
       )
       (i32.store offset=8
        (get_global $~lib/collector/itcm/from)
        (i32.const -1)
       )
       (call $~lib/collector/itcm/ManagedObject#clear
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
       (call $~lib/collector/itcm/ManagedObject#clear
        (get_global $~lib/collector/itcm/to)
       )
       (set_global $~lib/collector/itcm/iter
        (get_global $~lib/collector/itcm/to)
       )
       (set_global $~lib/collector/itcm/state
        (get_global $~lib/collector/itcm/State.IDLE)
       )
       (call $~lib/env/trace
        (i32.const 84)
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
     )
     (block
      (call $~lib/env/trace
       (i32.const 120)
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      (call $~lib/collector/itcm/markRoots)
      (set_global $~lib/collector/itcm/state
       (get_global $~lib/collector/itcm/State.MARK)
      )
      (call $~lib/env/trace
       (i32.const 296)
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
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
       (call $~lib/env/trace
        (i32.const 332)
        (i32.const 1)
        (f64.convert_u/i32
         (block $~lib/collector/itcm/objToRef|inlined.8 (result i32)
          (i32.add
           (get_local $0)
           (get_global $~lib/collector/itcm/ManagedObject.SIZE)
          )
         )
        )
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
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
        (block $~lib/collector/itcm/objToRef|inlined.9 (result i32)
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
       (call $~lib/env/trace
        (i32.const 376)
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
       (call $~lib/collector/itcm/markRoots)
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
         (call $~lib/env/trace
          (i32.const 420)
          (i32.const 0)
          (f64.const 0)
          (f64.const 0)
          (f64.const 0)
          (f64.const 0)
          (f64.const 0)
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
      (call $~lib/env/trace
       (i32.const 456)
       (i32.const 1)
       (f64.convert_u/i32
        (block $~lib/collector/itcm/objToRef|inlined.10 (result i32)
         (i32.add
          (get_local $0)
          (get_global $~lib/collector/itcm/ManagedObject.SIZE)
         )
        )
       )
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
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
      (call $~lib/env/trace
       (i32.const 496)
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      (call $~lib/collector/itcm/ManagedObject#clear
       (get_global $~lib/collector/itcm/to)
      )
      (set_global $~lib/collector/itcm/state
       (get_global $~lib/collector/itcm/State.IDLE)
      )
      (call $~lib/env/trace
       (i32.const 84)
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
     )
    )
    (br $break|0)
   )
  )
 )
 (func $~lib/collector/itcm/__gc_allocate (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/env/trace
   (i32.const 8)
   (i32.const 1)
   (f64.convert_u/i32
    (get_local $0)
   )
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
  )
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
  (call $~lib/collector/itcm/ManagedObject#push
   (get_global $~lib/collector/itcm/from)
   (get_local $2)
  )
  (block $~lib/collector/itcm/objToRef|inlined.11 (result i32)
   (i32.add
    (get_local $2)
    (get_global $~lib/collector/itcm/ManagedObject.SIZE)
   )
  )
 )
 (func $~lib/gc/gc.allocate (; 20 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (call $~lib/collector/itcm/__gc_allocate
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $~lib/collector/itcm/__gc_collect (; 21 ;) (type $v)
  (local $0 i32)
  (call $~lib/env/trace
   (i32.const 564)
   (i32.const 0)
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
   (f64.const 0)
  )
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
 (func $~lib/gc/gc.collect (; 22 ;) (type $v)
  (call $~lib/collector/itcm/__gc_collect)
  (return)
 )
 (func $std/gc/main (; 23 ;) (type $i) (result i32)
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
 (func $start (; 24 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  (set_global $std/gc/head
   (i32.sub
    (get_global $std/gc/obj)
    (i32.const 16)
   )
  )
  (block
   (set_local $0
    (i32.and
     (i32.load
      (get_global $std/gc/head)
     )
     (i32.xor
      (i32.const 3)
      (i32.const -1)
     )
    )
   )
   (set_local $1
    (i32.load offset=4
     (get_global $std/gc/head)
    )
   )
   (if
    (i32.eqz
     (if (result i32)
      (tee_local $2
       (if (result i32)
        (tee_local $2
         (i32.ne
          (get_local $0)
          (i32.const 0)
         )
        )
        (i32.ne
         (get_local $1)
         (i32.const 0)
        )
        (get_local $2)
       )
      )
      (i32.eq
       (get_local $0)
       (get_local $1)
      )
      (get_local $2)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 540)
      (i32.const 19)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $2
    (i32.load offset=8
     (get_global $std/gc/head)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (get_local $2)
      (i32.const 0)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 540)
      (i32.const 21)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $3
    (i32.load offset=12
     (get_global $std/gc/head)
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
      (i32.const 540)
      (i32.const 23)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (set_local $4
    (i32.load offset=16
     (get_global $std/gc/head)
    )
   )
   (if
    (i32.eqz
     (i32.eq
      (get_local $4)
      (i32.const 123)
     )
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 540)
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
)
