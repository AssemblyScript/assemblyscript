(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/gc-object/obj (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (table 3 3 anyfunc)
 (elem (i32.const 0) $~lib/collector/itcm/__gc_mark $std/gc-object/Custom~gc $std/gc-object/Base~gc)
 (memory $0 0)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $std/gc-object/main))
 (func $~lib/allocator/arena/__memory_allocate (; 0 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741824)
   )
   (unreachable)
  )
  (if
   (i32.gt_u
    (tee_local $2
     (i32.and
      (i32.add
       (i32.add
        (tee_local $1
         (get_global $~lib/allocator/arena/offset)
        )
        (select
         (get_local $0)
         (i32.const 1)
         (i32.gt_u
          (get_local $0)
          (i32.const 1)
         )
        )
       )
       (i32.const 7)
      )
      (i32.const -8)
     )
    )
    (i32.shl
     (tee_local $3
      (current_memory)
     )
     (i32.const 16)
    )
   )
   (if
    (i32.lt_s
     (grow_memory
      (select
       (get_local $3)
       (tee_local $0
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
       (i32.gt_s
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $0)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_local $2)
  )
  (get_local $1)
 )
 (func $~lib/collector/itcm/ManagedObjectList#clear (; 1 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (get_local $0)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $0)
  )
 )
 (func $~lib/collector/itcm/ManagedObject#get:color (; 2 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (i32.and
   (i32.load
    (get_local $0)
   )
   (i32.const 3)
  )
 )
 (func $~lib/collector/itcm/ManagedObject#get:next (; 3 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (i32.and
   (i32.load
    (get_local $0)
   )
   (i32.const -4)
  )
 )
 (func $~lib/collector/itcm/ManagedObject#set:next (; 4 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/collector/itcm/ManagedObject#unlink (; 5 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (i32.store offset=4
   (tee_local $1
    (call $~lib/collector/itcm/ManagedObject#get:next
     (get_local $0)
    )
   )
   (tee_local $0
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  (call $~lib/collector/itcm/ManagedObject#set:next
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/collector/itcm/ManagedObjectList#push (; 6 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 7 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
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
     (i32.const -4)
    )
    (i32.const 2)
   )
  )
 )
 (func $~lib/collector/itcm/__gc_mark (; 8 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (if
   (get_local $0)
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
 )
 (func $~lib/collector/itcm/ManagedObject#set:color (; 9 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/allocator/arena/__memory_free (; 10 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/collector/itcm/step (; 11 ;) (; has Stack IR ;) (type $v)
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
      (set_global $~lib/collector/itcm/fromSpace
       (tee_local $0
        (call $~lib/allocator/arena/__memory_allocate
         (i32.const 16)
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
       (tee_local $0
        (call $~lib/allocator/arena/__memory_allocate
         (i32.const 16)
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
       (i32.const 1)
      )
     )
     (call $~iterateRoots
      (i32.const 0)
     )
     (set_global $~lib/collector/itcm/state
      (i32.const 2)
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
      (call $~iterateRoots
       (i32.const 0)
      )
      (if
       (i32.eq
        (call $~lib/collector/itcm/ManagedObject#get:next
         (get_global $~lib/collector/itcm/iter)
        )
        (get_global $~lib/collector/itcm/toSpace)
       )
       (block
        (set_local $0
         (get_global $~lib/collector/itcm/fromSpace)
        )
        (set_global $~lib/collector/itcm/fromSpace
         (get_global $~lib/collector/itcm/toSpace)
        )
        (set_global $~lib/collector/itcm/toSpace
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
       (i32.const 8)
      )
      (call $~lib/allocator/arena/__memory_free
       (get_local $0)
      )
     )
    )
    (block
     (call $~lib/collector/itcm/ManagedObjectList#clear
      (get_global $~lib/collector/itcm/toSpace)
     )
     (set_global $~lib/collector/itcm/state
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/collector/itcm/__gc_allocate (; 12 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741808)
   )
   (unreachable)
  )
  (call $~lib/collector/itcm/step)
  (i32.store offset=8
   (tee_local $0
    (call $~lib/allocator/arena/__memory_allocate
     (i32.add
      (get_local $0)
      (i32.const 16)
     )
    )
   )
   (get_local $1)
  )
  (call $~lib/collector/itcm/ManagedObject#set:color
   (get_local $0)
   (get_global $~lib/collector/itcm/white)
  )
  (call $~lib/collector/itcm/ManagedObjectList#push
   (get_global $~lib/collector/itcm/fromSpace)
   (get_local $0)
  )
  (i32.add
   (get_local $0)
   (i32.const 16)
  )
 )
 (func $std/gc-object/Base~gc (; 13 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
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
 (func $std/gc-object/Custom~gc (; 14 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
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
 (func $~lib/collector/itcm/__gc_collect (; 15 ;) (; has Stack IR ;) (type $v)
  (local $0 i32)
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
 (func $~lib/gc/gc.collect (; 16 ;) (; has Stack IR ;) (type $v)
  (call $~lib/collector/itcm/__gc_collect)
 )
 (func $std/gc-object/main (; 17 ;) (; has Stack IR ;) (type $v)
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
 (func $start (; 18 ;) (; has Stack IR ;) (type $v)
  (local $0 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.const 8)
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (set_global $~lib/collector/itcm/state
   (i32.const 0)
  )
  (i32.store
   (tee_local $0
    (call $~lib/collector/itcm/__gc_allocate
     (i32.const 8)
     (i32.const 1)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 0)
  )
  (set_global $std/gc-object/obj
   (get_local $0)
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
 (func $~iterateRoots (; 19 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (call_indirect (type $iv)
   (get_global $std/gc-object/obj)
   (get_local $0)
  )
 )
)
