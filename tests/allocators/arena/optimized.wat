(module
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (global "$(lib)/allocator/arena/OFFSET" (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "allocate_memory" (func "$(lib)/allocator/arena/allocate_memory"))
 (export "free_memory" (func "$(lib)/allocator/arena/free_memory"))
 (export "reset_memory" (func "$(lib)/allocator/arena/reset_memory"))
 (export "memory" (memory $0))
 (start $(lib)/allocator/arena/reset_memory)
 (func "$(lib)/allocator/arena/allocate_memory" (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ (lib)/allocator/arena.ts:16:2
  (if
   ;;@ (lib)/allocator/arena.ts:16:6
   (i32.eqz
    ;;@ (lib)/allocator/arena.ts:16:7
    (get_local $0)
   )
   ;;@ (lib)/allocator/arena.ts:16:20
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/allocator/arena.ts:20:2
  (if
   ;;@ (lib)/allocator/arena.ts:20:6
   (i32.gt_u
    ;;@ (lib)/allocator/arena.ts:18:2
    (tee_local $2
     ;;@ (lib)/allocator/arena.ts:18:15
     (i32.and
      (i32.add
       ;;@ (lib)/allocator/arena.ts:18:16
       (i32.add
        ;;@ (lib)/allocator/arena.ts:17:2
        (tee_local $1
         ;;@ (lib)/allocator/arena.ts:17:12
         (get_global "$(lib)/allocator/arena/OFFSET")
        )
        ;;@ (lib)/allocator/arena.ts:18:22
        (get_local $0)
       )
       ;;@ (lib)/allocator/arena.ts:18:29
       (i32.const 7)
      )
      (i32.const -8)
     )
    )
    ;;@ (lib)/allocator/arena.ts:20:15
    (i32.shl
     ;;@ (lib)/allocator/arena.ts:19:2
     (tee_local $0
      ;;@ (lib)/allocator/arena.ts:19:20
      (current_memory)
     )
     ;;@ (lib)/allocator/arena.ts:20:37
     (i32.const 16)
    )
   )
   ;;@ (lib)/allocator/arena.ts:23:4
   (if
    ;;@ (lib)/allocator/arena.ts:23:8
    (i32.lt_s
     (grow_memory
      ;;@ (lib)/allocator/arena.ts:22:22
      (select
       ;;@ (lib)/allocator/arena.ts:22:26
       (get_local $0)
       (tee_local $4
        ;;@ (lib)/allocator/arena.ts:21:4
        (tee_local $3
         ;;@ (lib)/allocator/arena.ts:21:22
         (i32.shr_u
          (i32.and
           ;;@ (lib)/allocator/arena.ts:21:23
           (i32.add
            ;;@ (lib)/allocator/arena.ts:21:24
            (i32.sub
             (get_local $2)
             ;;@ (lib)/allocator/arena.ts:21:33
             (get_local $1)
            )
            ;;@ (lib)/allocator/arena.ts:21:39
            (i32.const 65535)
           )
           (i32.const -65536)
          )
          ;;@ (lib)/allocator/arena.ts:21:62
          (i32.const 16)
         )
        )
       )
       (i32.gt_s
        (get_local $0)
        (get_local $4)
       )
      )
     )
     ;;@ (lib)/allocator/arena.ts:23:35
     (i32.const 0)
    )
    ;;@ (lib)/allocator/arena.ts:24:6
    (if
     ;;@ (lib)/allocator/arena.ts:24:10
     (i32.lt_s
      (grow_memory
       ;;@ (lib)/allocator/arena.ts:24:22
       (get_local $3)
      )
      ;;@ (lib)/allocator/arena.ts:24:37
      (i32.const 0)
     )
     ;;@ (lib)/allocator/arena.ts:25:8
     (unreachable)
    )
   )
  )
  ;;@ (lib)/allocator/arena.ts:29:2
  (set_global "$(lib)/allocator/arena/OFFSET"
   ;;@ (lib)/allocator/arena.ts:29:11
   (get_local $2)
  )
  ;;@ (lib)/allocator/arena.ts:30:9
  (get_local $1)
 )
 (func "$(lib)/allocator/arena/free_memory" (; 1 ;) (type $iv) (param $0 i32)
  ;;@ (lib)/allocator/arena.ts:34:46
  (nop)
 )
 (func "$(lib)/allocator/arena/reset_memory" (; 2 ;) (type $v)
  ;;@ (lib)/allocator/arena.ts:40:2
  (set_global "$(lib)/allocator/arena/OFFSET"
   ;;@ (lib)/allocator/arena.ts:40:11
   (i32.and
    (i32.add
     ;;@ (lib)/allocator/arena.ts:40:12
     (get_global $HEAP_BASE)
     ;;@ (lib)/allocator/arena.ts:40:24
     (i32.const 7)
    )
    (i32.const -8)
   )
  )
 )
)
