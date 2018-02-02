(module
 (type $v (func))
 (global $unary/i (mut i32) (i32.const 0))
 (global $unary/I (mut i64) (i64.const 0))
 (global $unary/f (mut f32) (f32.const 0))
 (global $unary/F (mut f64) (f64.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (local $2 f32)
  (local $3 f64)
  ;;@ unary.ts:15:0
  (set_global $unary/i
   (i32.add
    ;;@ unary.ts:15:2
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  ;;@ unary.ts:16:0
  (set_global $unary/i
   (i32.sub
    ;;@ unary.ts:16:2
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  ;;@ unary.ts:17:0
  (set_global $unary/i
   (i32.add
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  ;;@ unary.ts:18:0
  (set_global $unary/i
   (i32.sub
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  ;;@ unary.ts:20:0
  (set_global $unary/i
   ;;@ unary.ts:20:4
   (i32.const 1)
  )
  ;;@ unary.ts:21:0
  (set_global $unary/i
   (i32.const -1)
  )
  ;;@ unary.ts:22:0
  (set_global $unary/i
   (i32.const 0)
  )
  ;;@ unary.ts:23:0
  (set_global $unary/i
   (i32.const -2)
  )
  ;;@ unary.ts:25:0
  (set_global $unary/i
   ;;@ unary.ts:25:4
   (i32.sub
    (i32.const 0)
    ;;@ unary.ts:25:5
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:26:0
  (set_global $unary/i
   ;;@ unary.ts:26:4
   (i32.eqz
    ;;@ unary.ts:26:5
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:27:0
  (set_global $unary/i
   ;;@ unary.ts:27:4
   (i32.xor
    ;;@ unary.ts:27:5
    (get_global $unary/i)
    (i32.const -1)
   )
  )
  ;;@ unary.ts:28:0
  (set_global $unary/i
   ;;@ unary.ts:28:4
   (block (result i32)
    (set_global $unary/i
     (i32.add
      ;;@ unary.ts:28:6
      (get_global $unary/i)
      (i32.const 1)
     )
    )
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:29:0
  (set_global $unary/i
   ;;@ unary.ts:29:4
   (block (result i32)
    (set_global $unary/i
     (i32.sub
      ;;@ unary.ts:29:6
      (get_global $unary/i)
      (i32.const 1)
     )
    )
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:30:0
  (set_global $unary/i
   ;;@ unary.ts:30:4
   (block (result i32)
    (set_global $unary/i
     (i32.add
      (tee_local $0
       (get_global $unary/i)
      )
      (i32.const 1)
     )
    )
    (get_local $0)
   )
  )
  ;;@ unary.ts:31:0
  (set_global $unary/i
   ;;@ unary.ts:31:4
   (block (result i32)
    (set_global $unary/i
     (i32.sub
      (tee_local $0
       (get_global $unary/i)
      )
      (i32.const 1)
     )
    )
    (get_local $0)
   )
  )
  ;;@ unary.ts:39:0
  (set_global $unary/I
   (i64.add
    ;;@ unary.ts:39:2
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  ;;@ unary.ts:40:0
  (set_global $unary/I
   (i64.sub
    ;;@ unary.ts:40:2
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  ;;@ unary.ts:41:0
  (set_global $unary/I
   (i64.add
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  ;;@ unary.ts:42:0
  (set_global $unary/I
   (i64.sub
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  ;;@ unary.ts:44:0
  (set_global $unary/I
   ;;@ unary.ts:44:4
   (i64.const 1)
  )
  ;;@ unary.ts:45:0
  (set_global $unary/I
   (i64.const -1)
  )
  ;;@ unary.ts:46:0
  (set_global $unary/I
   (i64.const 0)
  )
  ;;@ unary.ts:47:0
  (set_global $unary/I
   (i64.const -2)
  )
  ;;@ unary.ts:49:0
  (set_global $unary/I
   ;;@ unary.ts:49:4
   (i64.sub
    (i64.const 0)
    ;;@ unary.ts:49:5
    (get_global $unary/I)
   )
  )
  ;;@ unary.ts:50:0
  (set_global $unary/I
   ;;@ unary.ts:50:4
   (i64.extend_s/i32
    (i64.eqz
     ;;@ unary.ts:50:5
     (get_global $unary/I)
    )
   )
  )
  ;;@ unary.ts:51:0
  (set_global $unary/I
   ;;@ unary.ts:51:4
   (i64.xor
    ;;@ unary.ts:51:5
    (get_global $unary/I)
    (i64.const -1)
   )
  )
  ;;@ unary.ts:52:0
  (set_global $unary/I
   ;;@ unary.ts:52:4
   (block (result i64)
    (set_global $unary/I
     (i64.add
      ;;@ unary.ts:52:6
      (get_global $unary/I)
      (i64.const 1)
     )
    )
    (get_global $unary/I)
   )
  )
  ;;@ unary.ts:53:0
  (set_global $unary/I
   ;;@ unary.ts:53:4
   (block (result i64)
    (set_global $unary/I
     (i64.sub
      ;;@ unary.ts:53:6
      (get_global $unary/I)
      (i64.const 1)
     )
    )
    (get_global $unary/I)
   )
  )
  ;;@ unary.ts:54:0
  (set_global $unary/I
   ;;@ unary.ts:54:4
   (block (result i64)
    (set_global $unary/I
     (i64.add
      (tee_local $1
       (get_global $unary/I)
      )
      (i64.const 1)
     )
    )
    (get_local $1)
   )
  )
  ;;@ unary.ts:55:0
  (set_global $unary/I
   ;;@ unary.ts:55:4
   (block (result i64)
    (set_global $unary/I
     (i64.sub
      (tee_local $1
       (get_global $unary/I)
      )
      (i64.const 1)
     )
    )
    (get_local $1)
   )
  )
  ;;@ unary.ts:62:0
  (set_global $unary/f
   (f32.add
    ;;@ unary.ts:62:2
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  ;;@ unary.ts:63:0
  (set_global $unary/f
   (f32.sub
    ;;@ unary.ts:63:2
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  ;;@ unary.ts:64:0
  (set_global $unary/f
   (f32.add
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  ;;@ unary.ts:65:0
  (set_global $unary/f
   (f32.sub
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  ;;@ unary.ts:67:0
  (set_global $unary/f
   ;;@ unary.ts:67:4
   (f32.const 1.25)
  )
  ;;@ unary.ts:68:0
  (set_global $unary/f
   (f32.const -1.25)
  )
  ;;@ unary.ts:69:0
  (set_global $unary/i
   (i32.const 0)
  )
  ;;@ unary.ts:71:0
  (set_global $unary/f
   ;;@ unary.ts:71:4
   (f32.neg
    ;;@ unary.ts:71:5
    (get_global $unary/f)
   )
  )
  ;;@ unary.ts:72:0
  (set_global $unary/i
   ;;@ unary.ts:72:4
   (f32.eq
    ;;@ unary.ts:72:5
    (get_global $unary/f)
    (f32.const 0)
   )
  )
  ;;@ unary.ts:73:0
  (set_global $unary/f
   ;;@ unary.ts:73:4
   (block (result f32)
    (set_global $unary/f
     (f32.add
      ;;@ unary.ts:73:6
      (get_global $unary/f)
      (f32.const 1)
     )
    )
    (get_global $unary/f)
   )
  )
  ;;@ unary.ts:74:0
  (set_global $unary/f
   ;;@ unary.ts:74:4
   (block (result f32)
    (set_global $unary/f
     (f32.sub
      ;;@ unary.ts:74:6
      (get_global $unary/f)
      (f32.const 1)
     )
    )
    (get_global $unary/f)
   )
  )
  ;;@ unary.ts:75:0
  (set_global $unary/f
   ;;@ unary.ts:75:4
   (block (result f32)
    (set_global $unary/f
     (f32.add
      (tee_local $2
       (get_global $unary/f)
      )
      (f32.const 1)
     )
    )
    (get_local $2)
   )
  )
  ;;@ unary.ts:76:0
  (set_global $unary/f
   ;;@ unary.ts:76:4
   (block (result f32)
    (set_global $unary/f
     (f32.sub
      (tee_local $2
       (get_global $unary/f)
      )
      (f32.const 1)
     )
    )
    (get_local $2)
   )
  )
  ;;@ unary.ts:83:0
  (set_global $unary/F
   (f64.add
    ;;@ unary.ts:83:2
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  ;;@ unary.ts:84:0
  (set_global $unary/F
   (f64.sub
    ;;@ unary.ts:84:2
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  ;;@ unary.ts:85:0
  (set_global $unary/F
   (f64.add
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  ;;@ unary.ts:86:0
  (set_global $unary/F
   (f64.sub
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  ;;@ unary.ts:88:0
  (set_global $unary/F
   ;;@ unary.ts:88:4
   (f64.const 1.25)
  )
  ;;@ unary.ts:89:0
  (set_global $unary/F
   (f64.const -1.25)
  )
  ;;@ unary.ts:90:0
  (set_global $unary/I
   (i64.const 0)
  )
  ;;@ unary.ts:92:0
  (set_global $unary/F
   ;;@ unary.ts:92:4
   (f64.neg
    ;;@ unary.ts:92:5
    (get_global $unary/F)
   )
  )
  ;;@ unary.ts:93:0
  (set_global $unary/I
   ;;@ unary.ts:93:4
   (i64.extend_s/i32
    (f64.eq
     ;;@ unary.ts:93:5
     (get_global $unary/F)
     (f64.const 0)
    )
   )
  )
  ;;@ unary.ts:94:0
  (set_global $unary/F
   ;;@ unary.ts:94:4
   (block (result f64)
    (set_global $unary/F
     (f64.add
      ;;@ unary.ts:94:6
      (get_global $unary/F)
      (f64.const 1)
     )
    )
    (get_global $unary/F)
   )
  )
  ;;@ unary.ts:95:0
  (set_global $unary/F
   ;;@ unary.ts:95:4
   (block (result f64)
    (set_global $unary/F
     (f64.sub
      ;;@ unary.ts:95:6
      (get_global $unary/F)
      (f64.const 1)
     )
    )
    (get_global $unary/F)
   )
  )
  ;;@ unary.ts:96:0
  (set_global $unary/F
   ;;@ unary.ts:96:4
   (block (result f64)
    (set_global $unary/F
     (f64.add
      (tee_local $3
       (get_global $unary/F)
      )
      (f64.const 1)
     )
    )
    (get_local $3)
   )
  )
  ;;@ unary.ts:97:0
  (set_global $unary/F
   ;;@ unary.ts:97:4
   (block (result f64)
    (set_global $unary/F
     (f64.sub
      (tee_local $3
       (get_global $unary/F)
      )
      (f64.const 1)
     )
    )
    (get_local $3)
   )
  )
 )
)
