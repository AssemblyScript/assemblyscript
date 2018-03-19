(module
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (global "$(lib)/allocator/common/alignment/BITS" i32 (i32.const 3))
 (global "$(lib)/allocator/common/alignment/SIZE" i32 (i32.const 8))
 (global "$(lib)/allocator/common/alignment/MASK" i32 (i32.const 7))
 (global "$(lib)/allocator/arena/startOffset" (mut i32) (i32.const 0))
 (global "$(lib)/allocator/arena/offset" (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "allocate_memory" (func "$(lib)/allocator/arena/allocate_memory"))
 (export "free_memory" (func "$(lib)/allocator/arena/free_memory"))
 (export "reset_memory" (func "$(lib)/allocator/arena/reset_memory"))
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/allocator/arena/allocate_memory" (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  ;;@ (lib)/allocator/arena.ts:17:2
  (if
   ;;@ (lib)/allocator/arena.ts:17:6
   (i32.eqz
    ;;@ (lib)/allocator/arena.ts:17:7
    (get_local $0)
   )
   ;;@ (lib)/allocator/arena.ts:17:20
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/allocator/arena.ts:18:2
  (set_local $1
   ;;@ (lib)/allocator/arena.ts:18:12
   (get_global "$(lib)/allocator/arena/offset")
  )
  ;;@ (lib)/allocator/arena.ts:19:2
  (set_local $2
   ;;@ (lib)/allocator/arena.ts:19:15
   (i32.and
    (i32.add
     ;;@ (lib)/allocator/arena.ts:19:16
     (i32.add
      (get_local $1)
      ;;@ (lib)/allocator/arena.ts:19:22
      (get_local $0)
     )
     ;;@ (lib)/allocator/arena.ts:19:29
     (i32.const 7)
    )
    ;;@ (lib)/allocator/arena.ts:19:40
    (i32.xor
     ;;@ (lib)/allocator/arena.ts:19:41
     (i32.const 7)
     (i32.const -1)
    )
   )
  )
  ;;@ (lib)/allocator/arena.ts:20:2
  (set_local $3
   ;;@ (lib)/allocator/arena.ts:20:20
   (current_memory)
  )
  ;;@ (lib)/allocator/arena.ts:21:2
  (if
   ;;@ (lib)/allocator/arena.ts:21:6
   (i32.gt_u
    (get_local $2)
    ;;@ (lib)/allocator/arena.ts:21:15
    (i32.shl
     (get_local $3)
     ;;@ (lib)/allocator/arena.ts:21:37
     (i32.const 16)
    )
   )
   ;;@ (lib)/allocator/arena.ts:21:41
   (block
    ;;@ (lib)/allocator/arena.ts:22:4
    (set_local $4
     ;;@ (lib)/allocator/arena.ts:22:22
     (i32.shr_u
      (i32.and
       ;;@ (lib)/allocator/arena.ts:22:23
       (i32.add
        ;;@ (lib)/allocator/arena.ts:22:24
        (i32.sub
         (get_local $2)
         ;;@ (lib)/allocator/arena.ts:22:33
         (get_local $1)
        )
        ;;@ (lib)/allocator/arena.ts:22:39
        (i32.const 65535)
       )
       ;;@ (lib)/allocator/arena.ts:22:49
       (i32.xor
        ;;@ (lib)/allocator/arena.ts:22:50
        (i32.const 65535)
        (i32.const -1)
       )
      )
      ;;@ (lib)/allocator/arena.ts:22:62
      (i32.const 16)
     )
    )
    ;;@ (lib)/allocator/arena.ts:23:4
    (set_local $5
     ;;@ (lib)/allocator/arena.ts:23:22
     (select
      (tee_local $5
       ;;@ (lib)/allocator/arena.ts:23:26
       (get_local $3)
      )
      (tee_local $6
       ;;@ (lib)/allocator/arena.ts:23:39
       (get_local $4)
      )
      (i32.gt_s
       (get_local $5)
       (get_local $6)
      )
     )
    )
    ;;@ (lib)/allocator/arena.ts:24:4
    (if
     ;;@ (lib)/allocator/arena.ts:24:8
     (i32.lt_s
      (grow_memory
       ;;@ (lib)/allocator/arena.ts:24:20
       (get_local $5)
      )
      ;;@ (lib)/allocator/arena.ts:24:35
      (i32.const 0)
     )
     ;;@ (lib)/allocator/arena.ts:25:6
     (if
      ;;@ (lib)/allocator/arena.ts:25:10
      (i32.lt_s
       (grow_memory
        ;;@ (lib)/allocator/arena.ts:25:22
        (get_local $4)
       )
       ;;@ (lib)/allocator/arena.ts:25:37
       (i32.const 0)
      )
      ;;@ (lib)/allocator/arena.ts:26:8
      (unreachable)
     )
    )
   )
  )
  ;;@ (lib)/allocator/arena.ts:30:2
  (set_global "$(lib)/allocator/arena/offset"
   ;;@ (lib)/allocator/arena.ts:30:11
   (get_local $2)
  )
  ;;@ (lib)/allocator/arena.ts:31:9
  (return
   (get_local $1)
  )
 )
 (func "$(lib)/allocator/arena/free_memory" (; 1 ;) (type $iv) (param $0 i32)
 )
 (func "$(lib)/allocator/arena/reset_memory" (; 2 ;) (type $v)
  ;;@ (lib)/allocator/arena.ts:41:2
  (set_global "$(lib)/allocator/arena/offset"
   ;;@ (lib)/allocator/arena.ts:41:11
   (get_global "$(lib)/allocator/arena/startOffset")
  )
 )
 (func $start (; 3 ;) (type $v)
  (set_global "$(lib)/allocator/arena/startOffset"
   ;;@ (lib)/allocator/arena.ts:12:25
   (i32.and
    (i32.add
     ;;@ (lib)/allocator/arena.ts:12:26
     (get_global $HEAP_BASE)
     ;;@ (lib)/allocator/arena.ts:12:38
     (i32.const 7)
    )
    ;;@ (lib)/allocator/arena.ts:12:49
    (i32.xor
     ;;@ (lib)/allocator/arena.ts:12:50
     (i32.const 7)
     (i32.const -1)
    )
   )
  )
  (set_global "$(lib)/allocator/arena/offset"
   ;;@ (lib)/allocator/arena.ts:13:20
   (get_global "$(lib)/allocator/arena/startOffset")
  )
 )
)
