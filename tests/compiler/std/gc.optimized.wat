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
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/from (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/to (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/gc/obj (mut i32) (i32.const 0))
 (global $std/gc/head (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (table 2 2 anyfunc)
 (elem (i32.const 0) $std/gc/MyObject_visit $~lib/collector/itcm/markRoots~markRoot|1)
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00g\00c\00.\00a\00l\00l\00o\00c\00a\00t\00e")
 (data (i32.const 36) "\0c\00\00\00g\00c\00~\00s\00t\00e\00p\00/\00I\00N\00I\00T")
 (data (i32.const 64) "\08\00\00\00 \00 \00 \00c\00l\00e\00a\00r")
 (data (i32.const 84) "\0f\00\00\00g\00c\00~\00s\00t\00a\00t\00e\00 \00=\00 \00I\00D\00L\00E")
 (data (i32.const 120) "\0c\00\00\00g\00c\00~\00s\00t\00e\00p\00/\00I\00D\00L\00E")
 (data (i32.const 148) "\0c\00\00\00 \00 \00 \00m\00a\00r\00k\00R\00o\00o\00t\00s")
 (data (i32.const 176) "\0b\00\00\00 \00 \00 \00m\00a\00r\00k\00R\00o\00o\00t")
 (data (i32.const 204) "\07\00\00\00g\00c\00.\00m\00a\00r\00k")
 (data (i32.const 224) "\0b\00\00\00 \00 \00 \00m\00a\00k\00e\00G\00r\00a\00y")
 (data (i32.const 252) "\t\00\00\00 \00 \00 \00u\00n\00l\00i\00n\00k")
 (data (i32.const 276) "\07\00\00\00 \00 \00 \00p\00u\00s\00h")
 (data (i32.const 296) "\0f\00\00\00g\00c\00~\00s\00t\00a\00t\00e\00 \00=\00 \00M\00A\00R\00K")
 (data (i32.const 332) "\14\00\00\00g\00c\00~\00s\00t\00e\00p\00/\00M\00A\00R\00K\00 \00i\00t\00e\00r\00a\00t\00e")
 (data (i32.const 376) "\13\00\00\00g\00c\00~\00s\00t\00e\00p\00/\00M\00A\00R\00K\00 \00f\00i\00n\00i\00s\00h")
 (data (i32.const 420) "\10\00\00\00g\00c\00~\00s\00t\00a\00t\00e\00 \00=\00 \00S\00W\00E\00E\00P")
 (data (i32.const 456) "\12\00\00\00g\00c\00~\00s\00t\00e\00p\00/\00S\00W\00E\00E\00P\00 \00f\00r\00e\00e")
 (data (i32.const 496) "\14\00\00\00g\00c\00~\00s\00t\00e\00p\00/\00S\00W\00E\00E\00P\00 \00f\00i\00n\00i\00s\00h")
 (data (i32.const 540) "\t\00\00\00s\00t\00d\00/\00g\00c\00.\00t\00s")
 (data (i32.const 564) "\n\00\00\00g\00c\00.\00c\00o\00l\00l\00e\00c\00t")
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
 (func $~lib/memory/memory.allocate (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/allocator/arena/__memory_allocate
   (get_local $0)
  )
 )
 (func $~lib/collector/itcm/ManagedObject#clear (; 5 ;) (type $iv) (param $0 i32)
  (call $~lib/env/trace
   (i32.const 64)
   (i32.const 1)
   (f64.convert_u/i32
    (i32.add
     (get_local $0)
     (i32.const 16)
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
   (i32.const -4)
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
  (call $~lib/env/trace
   (i32.const 252)
   (i32.const 3)
   (f64.convert_u/i32
    (i32.add
     (tee_local $2
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 16)
    )
   )
   (f64.convert_u/i32
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
   )
   (f64.convert_u/i32
    (i32.add
     (get_local $1)
     (i32.const 16)
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
  (call $~lib/env/trace
   (i32.const 276)
   (i32.const 3)
   (f64.convert_u/i32
    (i32.add
     (tee_local $2
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 16)
    )
   )
   (f64.convert_u/i32
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
   (f64.convert_u/i32
    (i32.add
     (get_local $0)
     (i32.const 16)
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
    (i32.add
     (get_local $0)
     (i32.const 16)
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
     (i32.const -4)
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
  (if
   (i32.eq
    (call $~lib/collector/itcm/ManagedObject#get:color
     (tee_local $1
      (i32.sub
       (get_local $0)
       (i32.const 16)
      )
     )
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
     (i32.const -4)
    )
    (get_local $1)
   )
  )
 )
 (func $~lib/memory/memory.free (; 16 ;) (type $iv) (param $0 i32)
  (call $std/gc/MyObject_visit
   (get_local $0)
  )
 )
 (func $~lib/collector/itcm/step (; 17 ;) (type $v)
  (local $0 i32)
  (block $break|0
   (block $case3|0
    (block $case2|0
     (block $case1|0
      (if
       (tee_local $0
        (get_global $~lib/collector/itcm/state)
       )
       (block
        (block $tablify|0
         (br_table $case1|0 $case2|0 $case3|0 $tablify|0
          (i32.sub
           (get_local $0)
           (i32.const 1)
          )
         )
        )
        (br $break|0)
       )
      )
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
        (i32.const 16)
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
        (i32.const 16)
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
       (i32.const 1)
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
      (i32.const 2)
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
    (if
     (i32.ne
      (tee_local $0
       (call $~lib/collector/itcm/ManagedObject#get:next
        (get_global $~lib/collector/itcm/iter)
       )
      )
      (get_global $~lib/collector/itcm/to)
     )
     (block
      (call $~lib/env/trace
       (i32.const 332)
       (i32.const 1)
       (f64.convert_u/i32
        (i32.add
         (get_local $0)
         (i32.const 16)
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
       (i32.add
        (get_local $0)
        (i32.const 16)
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
      (if
       (i32.eq
        (call $~lib/collector/itcm/ManagedObject#get:next
         (get_global $~lib/collector/itcm/iter)
        )
        (get_global $~lib/collector/itcm/to)
       )
       (block
        (set_local $0
         (get_global $~lib/collector/itcm/from)
        )
        (set_global $~lib/collector/itcm/from
         (get_global $~lib/collector/itcm/to)
        )
        (set_global $~lib/collector/itcm/to
         (get_local $0)
        )
        (set_global $~lib/collector/itcm/white
         (i32.eqz
          (get_global $~lib/collector/itcm/white)
         )
        )
        (set_global $~lib/collector/itcm/iter
         (call $~lib/collector/itcm/ManagedObject#get:next
          (get_local $0)
         )
        )
        (set_global $~lib/collector/itcm/state
         (i32.const 3)
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
   (if
    (i32.ne
     (tee_local $0
      (get_global $~lib/collector/itcm/iter)
     )
     (get_global $~lib/collector/itcm/to)
    )
    (block
     (call $~lib/env/trace
      (i32.const 456)
      (i32.const 1)
      (f64.convert_u/i32
       (i32.add
        (get_local $0)
        (i32.const 16)
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
      (i32.const 1)
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
  )
 )
 (func $~lib/collector/itcm/__gc_allocate (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 1073741808)
   )
   (unreachable)
  )
  (call $~lib/collector/itcm/step)
  (i32.store offset=8
   (tee_local $2
    (call $~lib/memory/memory.allocate
     (i32.add
      (get_local $0)
      (i32.const 16)
     )
    )
   )
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
  (i32.add
   (get_local $2)
   (i32.const 16)
  )
 )
 (func $~lib/gc/gc.allocate (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/collector/itcm/__gc_allocate
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/collector/itcm/__gc_collect (; 20 ;) (type $v)
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
    (br_if $case1|0
     (i32.eqz
      (tee_local $0
       (get_global $~lib/collector/itcm/state)
      )
     )
    )
    (br_if $case1|0
     (i32.eq
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $break|0)
   )
   (call $~lib/collector/itcm/step)
  )
  (loop $continue|1
   (if
    (i32.ne
     (get_global $~lib/collector/itcm/state)
     (i32.const 1)
    )
    (block
     (call $~lib/collector/itcm/step)
     (br $continue|1)
    )
   )
  )
 )
 (func $~lib/gc/gc.collect (; 21 ;) (type $v)
  (call $~lib/collector/itcm/__gc_collect)
 )
 (func $std/gc/main (; 22 ;) (type $i) (result i32)
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
 (func $start (; 23 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.const 592)
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (set_global $~lib/collector/itcm/state
   (i32.const 0)
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
  (set_local $1
   (i32.load offset=4
    (get_global $std/gc/head)
   )
  )
  (if
   (tee_local $0
    (i32.ne
     (tee_local $2
      (i32.and
       (i32.load
        (get_global $std/gc/head)
       )
       (i32.const -4)
      )
     )
     (i32.const 0)
    )
   )
   (set_local $0
    (i32.ne
     (get_local $1)
     (i32.const 0)
    )
   )
  )
  (if
   (get_local $0)
   (set_local $0
    (i32.eq
     (get_local $2)
     (get_local $1)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $0)
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
  (if
   (i32.load offset=8
    (get_global $std/gc/head)
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
  (if
   (i32.load offset=12
    (get_global $std/gc/head)
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
  (if
   (i32.ne
    (i32.load offset=16
     (get_global $std/gc/head)
    )
    (i32.const 123)
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
  (call $~lib/gc/gc.collect)
  (set_global $std/gc/obj
   (i32.const 0)
  )
  (call $~lib/gc/gc.collect)
 )
)
