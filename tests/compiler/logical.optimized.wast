(module
 (type $v (func))
 (global $logical/i (mut i32) (i32.const 0))
 (global $logical/I (mut i64) (i64.const 0))
 (global $logical/f (mut f32) (f32.const 0))
 (global $logical/F (mut f64) (f64.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 f64)
  (if
   (i32.eqz
    (tee_local $0
     (i32.const 2)
    )
   )
   ;;@ logical.ts:6:10
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $1
     (f64.const 2)
    )
    (f64.const 0)
   )
   ;;@ logical.ts:7:14
   (unreachable)
  )
  ;;@ logical.ts:11:0
  (set_global $logical/i
   (i32.const 2)
  )
  ;;@ logical.ts:12:0
  (if
   ;;@ logical.ts:12:7
   (i32.ne
    (get_global $logical/i)
    ;;@ logical.ts:12:12
    (i32.const 2)
   )
   (unreachable)
  )
  ;;@ logical.ts:14:0
  (set_global $logical/i
   (i32.const 1)
  )
  ;;@ logical.ts:15:0
  (if
   ;;@ logical.ts:15:7
   (i32.ne
    (get_global $logical/i)
    ;;@ logical.ts:15:12
    (i32.const 1)
   )
   (unreachable)
  )
  ;;@ logical.ts:19:0
  (set_global $logical/I
   (i64.const 2)
  )
  ;;@ logical.ts:20:0
  (if
   ;;@ logical.ts:20:7
   (i64.ne
    (get_global $logical/I)
    ;;@ logical.ts:20:12
    (i64.const 2)
   )
   (unreachable)
  )
  ;;@ logical.ts:22:0
  (set_global $logical/I
   (i64.const 1)
  )
  ;;@ logical.ts:23:0
  (if
   ;;@ logical.ts:23:7
   (i64.ne
    (get_global $logical/I)
    ;;@ logical.ts:23:12
    (i64.const 1)
   )
   (unreachable)
  )
  ;;@ logical.ts:27:0
  (set_global $logical/f
   (f32.const 2)
  )
  ;;@ logical.ts:28:0
  (if
   ;;@ logical.ts:28:7
   (f32.ne
    (get_global $logical/f)
    ;;@ logical.ts:28:12
    (f32.const 2)
   )
   (unreachable)
  )
  ;;@ logical.ts:30:0
  (set_global $logical/f
   (f32.const 1)
  )
  ;;@ logical.ts:31:0
  (if
   ;;@ logical.ts:31:7
   (f32.ne
    (get_global $logical/f)
    ;;@ logical.ts:31:12
    (f32.const 1)
   )
   (unreachable)
  )
  ;;@ logical.ts:35:0
  (set_global $logical/F
   (f64.const 2)
  )
  ;;@ logical.ts:36:0
  (if
   ;;@ logical.ts:36:7
   (f64.ne
    (get_global $logical/F)
    ;;@ logical.ts:36:12
    (f64.const 2)
   )
   (unreachable)
  )
  ;;@ logical.ts:38:0
  (set_global $logical/F
   (f64.const 1)
  )
  ;;@ logical.ts:39:0
  (if
   ;;@ logical.ts:39:7
   (f64.ne
    (get_global $logical/F)
    ;;@ logical.ts:39:12
    (f64.const 1)
   )
   (unreachable)
  )
 )
)
