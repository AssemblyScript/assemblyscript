(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (global "$(lib)/allocator/arena/HEAP_OFFSET" (mut i32) (i32.const 0))
 (global $std/new/aClass (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/allocator/arena/allocate_memory" (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ (lib)/allocator/arena.ts:14:2
  (if
   ;;@ (lib)/allocator/arena.ts:14:6
   (i32.eqz
    ;;@ (lib)/allocator/arena.ts:14:7
    (get_local $0)
   )
   ;;@ (lib)/allocator/arena.ts:14:20
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/allocator/arena.ts:18:2
  (if
   ;;@ (lib)/allocator/arena.ts:18:6
   (i32.and
    (if (result i32)
     (tee_local $0
      (i32.gt_u
       ;;@ (lib)/allocator/arena.ts:16:2
       (tee_local $2
        ;;@ (lib)/allocator/arena.ts:16:12
        (i32.and
         (i32.add
          ;;@ (lib)/allocator/arena.ts:16:13
          (i32.add
           ;;@ (lib)/allocator/arena.ts:15:2
           (tee_local $3
            ;;@ (lib)/allocator/arena.ts:15:12
            (get_global "$(lib)/allocator/arena/HEAP_OFFSET")
           )
           ;;@ (lib)/allocator/arena.ts:16:19
           (get_local $0)
          )
          ;;@ (lib)/allocator/arena.ts:16:26
          (i32.const 7)
         )
         (i32.const -8)
        )
       )
       ;;@ (lib)/allocator/arena.ts:17:2
       (tee_local $1
        ;;@ (lib)/allocator/arena.ts:17:14
        (i32.shl
         (current_memory)
         ;;@ (lib)/allocator/arena.ts:17:41
         (i32.const 16)
        )
       )
      )
     )
     ;;@ (lib)/allocator/arena.ts:18:21
     (i32.lt_s
      (grow_memory
       ;;@ (lib)/allocator/arena.ts:19:4
       (select
        (tee_local $0
         ;;@ (lib)/allocator/arena.ts:20:6
         (i32.shr_u
          (i32.sub
           ;;@ (lib)/allocator/arena.ts:20:7
           (i32.and
            ;;@ (lib)/allocator/arena.ts:20:8
            (i32.add
             ;;@ (lib)/allocator/arena.ts:20:9
             (get_local $2)
             ;;@ (lib)/allocator/arena.ts:20:15
             (i32.const 65535)
            )
            (i32.const -65536)
           )
           ;;@ (lib)/allocator/arena.ts:20:36
           (get_local $1)
          )
          ;;@ (lib)/allocator/arena.ts:20:46
          (i32.const 16)
         )
        )
        (tee_local $1
         ;;@ (lib)/allocator/arena.ts:21:6
         (i32.shr_u
          (get_local $1)
          ;;@ (lib)/allocator/arena.ts:21:46
          (i32.const 16)
         )
        )
        (i32.gt_u
         (get_local $0)
         (get_local $1)
        )
       )
      )
      ;;@ (lib)/allocator/arena.ts:23:6
      (i32.const 0)
     )
     (get_local $0)
    )
    (i32.const 1)
   )
   ;;@ (lib)/allocator/arena.ts:23:9
   (unreachable)
  )
  ;;@ (lib)/allocator/arena.ts:24:2
  (set_global "$(lib)/allocator/arena/HEAP_OFFSET"
   ;;@ (lib)/allocator/arena.ts:24:16
   (get_local $2)
  )
  ;;@ (lib)/allocator/arena.ts:25:9
  (get_local $3)
 )
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_global "$(lib)/allocator/arena/HEAP_OFFSET"
   ;;@ (lib)/allocator/arena.ts:11:25
   (get_global $HEAP_BASE)
  )
  (set_global $std/new/aClass
   ;;@ std/new.ts:13:13
   (block (result i32)
    (i32.store
     (tee_local $0
      (call "$(lib)/allocator/arena/allocate_memory"
       (i32.const 8)
      )
     )
     ;;@ std/new.ts:5:16
     (i32.const 1)
    )
    (f32.store offset=4
     (get_local $0)
     ;;@ std/new.ts:6:22
     (f32.const 2)
    )
    (i32.store
     (tee_local $1
      (get_local $0)
     )
     (i32.add
      (i32.load
       (get_local $1)
      )
      (i32.const 1)
     )
    )
    (f32.store offset=4
     (get_local $1)
     (f32.const 3)
    )
    (get_local $0)
   )
  )
 )
)
