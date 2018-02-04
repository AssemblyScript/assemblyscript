(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $logical/i (mut i32) (i32.const 0))
 (global $logical/I (mut i64) (i64.const 0))
 (global $logical/f (mut f32) (f32.const 0))
 (global $logical/F (mut f64) (f64.const 0))
 (global $HEAP_BASE i32 (i32.const 32))
 (memory $0 1)
 (data (i32.const 8) "\n\00\00\00l\00o\00g\00i\00c\00a\00l\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 f64)
  ;;@ logical.ts:1:0
  (drop
   (if (result i32)
    (i32.ne
     (i32.const 0)
     (i32.const 0)
    )
    ;;@ logical.ts:1:5
    (unreachable)
    (i32.const 0)
   )
  )
  ;;@ logical.ts:2:0
  (drop
   (if (result f64)
    (f64.ne
     (f64.const 0)
     (f64.const 0)
    )
    ;;@ logical.ts:2:7
    (unreachable)
    (f64.const 0)
   )
  )
  ;;@ logical.ts:3:0
  (drop
   (if (result i32)
    (i32.ne
     (i32.const 1)
     (i32.const 0)
    )
    (i32.const 1)
    ;;@ logical.ts:3:5
    (unreachable)
   )
  )
  ;;@ logical.ts:4:0
  (drop
   (if (result f64)
    (f64.ne
     (f64.const 1)
     (f64.const 0)
    )
    (f64.const 1)
    ;;@ logical.ts:4:7
    (unreachable)
   )
  )
  ;;@ logical.ts:6:0
  (drop
   (if (result i32)
    (i32.ne
     (tee_local $0
      (if (result i32)
       (i32.ne
        (i32.const 1)
        (i32.const 0)
       )
       ;;@ logical.ts:6:5
       (i32.const 2)
       (i32.const 1)
      )
     )
     (i32.const 0)
    )
    (get_local $0)
    ;;@ logical.ts:6:10
    (unreachable)
   )
  )
  ;;@ logical.ts:7:0
  (drop
   (if (result f64)
    (f64.ne
     (tee_local $1
      (if (result f64)
       (f64.ne
        (f64.const 1)
        (f64.const 0)
       )
       ;;@ logical.ts:7:7
       (f64.const 2)
       (f64.const 1)
      )
     )
     (f64.const 0)
    )
    (get_local $1)
    ;;@ logical.ts:7:14
    (unreachable)
   )
  )
  ;;@ logical.ts:11:0
  (set_global $logical/i
   ;;@ logical.ts:11:4
   (if (result i32)
    (i32.ne
     (i32.const 1)
     (i32.const 0)
    )
    ;;@ logical.ts:11:9
    (i32.const 2)
    (i32.const 1)
   )
  )
  ;;@ logical.ts:12:0
  (if
   (i32.eqz
    ;;@ logical.ts:12:7
    (i32.eq
     (get_global $logical/i)
     ;;@ logical.ts:12:12
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ logical.ts:14:0
  (set_global $logical/i
   ;;@ logical.ts:14:4
   (if (result i32)
    (i32.ne
     (i32.const 0)
     (i32.const 0)
    )
    (i32.const 0)
    ;;@ logical.ts:14:9
    (i32.const 1)
   )
  )
  ;;@ logical.ts:15:0
  (if
   (i32.eqz
    ;;@ logical.ts:15:7
    (i32.eq
     (get_global $logical/i)
     ;;@ logical.ts:15:12
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
  ;;@ logical.ts:19:0
  (set_global $logical/I
   ;;@ logical.ts:19:4
   (if (result i64)
    (i64.ne
     (i64.const 1)
     (i64.const 0)
    )
    ;;@ logical.ts:19:9
    (i64.const 2)
    (i64.const 1)
   )
  )
  ;;@ logical.ts:20:0
  (if
   (i32.eqz
    ;;@ logical.ts:20:7
    (i64.eq
     (get_global $logical/I)
     ;;@ logical.ts:20:12
     (i64.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ logical.ts:22:0
  (set_global $logical/I
   ;;@ logical.ts:22:4
   (if (result i64)
    (i64.ne
     (i64.const 0)
     (i64.const 0)
    )
    (i64.const 0)
    ;;@ logical.ts:22:9
    (i64.const 1)
   )
  )
  ;;@ logical.ts:23:0
  (if
   (i32.eqz
    ;;@ logical.ts:23:7
    (i64.eq
     (get_global $logical/I)
     ;;@ logical.ts:23:12
     (i64.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ logical.ts:27:0
  (set_global $logical/f
   ;;@ logical.ts:27:4
   (if (result f32)
    (f32.ne
     (f32.const 1)
     (f32.const 0)
    )
    ;;@ logical.ts:27:11
    (f32.const 2)
    (f32.const 1)
   )
  )
  ;;@ logical.ts:28:0
  (if
   (i32.eqz
    ;;@ logical.ts:28:7
    (f32.eq
     (get_global $logical/f)
     ;;@ logical.ts:28:12
     (f32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 28)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ logical.ts:30:0
  (set_global $logical/f
   ;;@ logical.ts:30:4
   (if (result f32)
    (f32.ne
     (f32.const 0)
     (f32.const 0)
    )
    (f32.const 0)
    ;;@ logical.ts:30:11
    (f32.const 1)
   )
  )
  ;;@ logical.ts:31:0
  (if
   (i32.eqz
    ;;@ logical.ts:31:7
    (f32.eq
     (get_global $logical/f)
     ;;@ logical.ts:31:12
     (f32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 31)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ logical.ts:35:0
  (set_global $logical/F
   ;;@ logical.ts:35:4
   (if (result f64)
    (f64.ne
     (f64.const 1)
     (f64.const 0)
    )
    ;;@ logical.ts:35:11
    (f64.const 2)
    (f64.const 1)
   )
  )
  ;;@ logical.ts:36:0
  (if
   (i32.eqz
    ;;@ logical.ts:36:7
    (f64.eq
     (get_global $logical/F)
     ;;@ logical.ts:36:12
     (f64.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 36)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ logical.ts:38:0
  (set_global $logical/F
   ;;@ logical.ts:38:4
   (if (result f64)
    (f64.ne
     (f64.const 0)
     (f64.const 0)
    )
    (f64.const 0)
    ;;@ logical.ts:38:11
    (f64.const 1)
   )
  )
  ;;@ logical.ts:39:0
  (if
   (i32.eqz
    ;;@ logical.ts:39:7
    (f64.eq
     (get_global $logical/F)
     ;;@ logical.ts:39:12
     (f64.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 39)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
