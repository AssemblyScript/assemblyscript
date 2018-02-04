(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $comma/a (mut i32) (i32.const 0))
 (global $comma/b (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 28))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00c\00o\00m\00m\00a\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  ;;@ comma.ts:3:0
  (block
   (set_global $comma/b
    ;;@ comma.ts:3:4
    (block (result i32)
     (set_local $0
      (get_global $comma/a)
     )
     (set_global $comma/a
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (get_local $0)
    )
   )
   ;;@ comma.ts:3:9
   (drop
    (get_global $comma/a)
   )
  )
  ;;@ comma.ts:4:0
  (if
   (i32.eqz
    ;;@ comma.ts:4:7
    (i32.eq
     (get_global $comma/a)
     ;;@ comma.ts:4:12
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 4)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ comma.ts:5:0
  (if
   (i32.eqz
    ;;@ comma.ts:5:7
    (i32.eq
     (get_global $comma/b)
     ;;@ comma.ts:5:12
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 5)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ comma.ts:7:0
  (block
   (set_global $comma/a
    (i32.add
     (get_global $comma/a)
     (i32.const 1)
    )
   )
   ;;@ comma.ts:7:5
   (set_global $comma/b
    ;;@ comma.ts:7:9
    (get_global $comma/a)
   )
  )
  ;;@ comma.ts:8:0
  (if
   (i32.eqz
    ;;@ comma.ts:8:7
    (i32.eq
     (get_global $comma/a)
     ;;@ comma.ts:8:12
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 8)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ comma.ts:9:0
  (if
   (i32.eqz
    ;;@ comma.ts:9:7
    (i32.eq
     (get_global $comma/b)
     ;;@ comma.ts:9:12
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 9)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ comma.ts:11:0
  (set_global $comma/a
   ;;@ comma.ts:11:4
   (block (result i32)
    (set_global $comma/b
     ;;@ comma.ts:11:8
     (i32.const 0)
    )
    (get_global $comma/b)
   )
  )
  ;;@ comma.ts:13:0
  (set_global $comma/b
   ;;@ comma.ts:13:4
   (block (result i32)
    ;;@ comma.ts:13:5
    (set_global $comma/a
     (i32.add
      (get_global $comma/a)
      (i32.const 1)
     )
    )
    ;;@ comma.ts:13:10
    (get_global $comma/a)
   )
  )
  ;;@ comma.ts:14:0
  (if
   (i32.eqz
    ;;@ comma.ts:14:7
    (i32.eq
     (get_global $comma/a)
     ;;@ comma.ts:14:12
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 14)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ comma.ts:15:0
  (if
   (i32.eqz
    ;;@ comma.ts:15:7
    (i32.eq
     (get_global $comma/b)
     ;;@ comma.ts:15:12
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 15)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ comma.ts:17:0
  (set_global $comma/a
   ;;@ comma.ts:17:4
   (block (result i32)
    ;;@ comma.ts:17:5
    (set_global $comma/a
     (i32.add
      (get_global $comma/a)
      (i32.const 1)
     )
    )
    ;;@ comma.ts:17:10
    (block (result i32)
     (set_global $comma/b
      ;;@ comma.ts:17:14
      (get_global $comma/a)
     )
     (get_global $comma/b)
    )
   )
  )
  ;;@ comma.ts:18:0
  (if
   (i32.eqz
    ;;@ comma.ts:18:7
    (i32.eq
     (get_global $comma/a)
     ;;@ comma.ts:18:12
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 18)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ comma.ts:19:0
  (if
   (i32.eqz
    ;;@ comma.ts:19:7
    (i32.eq
     (get_global $comma/b)
     ;;@ comma.ts:19:12
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 19)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ comma.ts:21:0
  (block $break|0
   ;;@ comma.ts:21:5
   (set_local $1
    ;;@ comma.ts:21:13
    (i32.const 0)
   )
   (loop $continue|0
    (if
     ;;@ comma.ts:21:16
     (i32.lt_u
      (get_local $1)
      ;;@ comma.ts:21:20
      (get_global $comma/a)
     )
     (block
      ;;@ comma.ts:21:32
      (nop)
      ;;@ comma.ts:21:23
      (block
       (set_global $comma/a
        (i32.sub
         (get_global $comma/a)
         (i32.const 1)
        )
       )
       ;;@ comma.ts:21:28
       (set_local $1
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ comma.ts:22:0
  (if
   (i32.eqz
    ;;@ comma.ts:22:7
    (i32.eq
     (get_local $1)
     ;;@ comma.ts:22:12
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 22)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ comma.ts:24:0
  (block
   (drop
    (i32.const 1)
   )
   ;;@ comma.ts:24:3
   (drop
    (i32.const 2)
   )
   ;;@ comma.ts:24:6
   (drop
    (i32.const 3)
   )
  )
 )
)
