(module
 (type $v (func))
 (global $builtins/b (mut i32) (i32.const 0))
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $builtins/s (mut i32) (i32.const 0))
 (memory $0 1)
 (export "test" (func $builtins/test))
 (export "memory" (memory $0))
 (start $start)
 (func $builtins/test (; 0 ;) (type $v)
  (nop)
 )
 (func $start (; 1 ;) (type $v)
  (local $0 f32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (drop
   (select
    (tee_local $2
     (i32.const 1)
    )
    (tee_local $3
     (i32.const 2)
    )
    (i32.gt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (drop
   (select
    (tee_local $2
     (i32.const 1)
    )
    (tee_local $3
     (i32.const 2)
    )
    (i32.lt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (set_global $builtins/i
   (i32.const 31)
  )
  (set_global $builtins/i
   (i32.const 0)
  )
  (set_global $builtins/i
   (i32.const 1)
  )
  (set_global $builtins/i
   (i32.const 2)
  )
  (set_global $builtins/i
   (i32.const -2147483648)
  )
  (set_global $builtins/i
   (select
    (i32.sub
     (i32.const 0)
     (tee_local $2
      (i32.const -42)
     )
    )
    (get_local $2)
    (i32.lt_s
     (get_local $2)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.ne
    (get_global $builtins/i)
    (i32.const 42)
   )
   (unreachable)
  )
  (set_global $builtins/i
   (select
    (tee_local $2
     (i32.const 1)
    )
    (tee_local $3
     (i32.const 2)
    )
    (i32.gt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (if
   (i32.ne
    (get_global $builtins/i)
    (i32.const 2)
   )
   (unreachable)
  )
  (set_global $builtins/i
   (select
    (tee_local $2
     (i32.const 1)
    )
    (tee_local $3
     (i32.const 2)
    )
    (i32.lt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (if
   (i32.ne
    (get_global $builtins/i)
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $builtins/I
   (i64.const 63)
  )
  (set_global $builtins/I
   (i64.const 0)
  )
  (set_global $builtins/I
   (i64.const 1)
  )
  (set_global $builtins/I
   (i64.const 2)
  )
  (set_global $builtins/I
   (i64.const -9223372036854775808)
  )
  (set_global $builtins/I
   (select
    (i64.sub
     (i64.const 0)
     (tee_local $4
      (i64.const -42)
     )
    )
    (get_local $4)
    (i64.lt_s
     (get_local $4)
     (i64.const 0)
    )
   )
  )
  (if
   (i64.ne
    (get_global $builtins/I)
    (i64.const 42)
   )
   (unreachable)
  )
  (set_global $builtins/I
   (select
    (tee_local $4
     (i64.const 1)
    )
    (tee_local $5
     (i64.const 2)
    )
    (i64.gt_s
     (get_local $4)
     (get_local $5)
    )
   )
  )
  (if
   (i64.ne
    (get_global $builtins/I)
    (i64.const 2)
   )
   (unreachable)
  )
  (set_global $builtins/I
   (select
    (tee_local $4
     (i64.const 1)
    )
    (tee_local $5
     (i64.const 2)
    )
    (i64.lt_s
     (get_local $4)
     (get_local $5)
    )
   )
  )
  (if
   (i32.ne
    (get_global $builtins/i)
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $builtins/f
   (f32.const nan:0x400000)
  )
  (set_global $builtins/f
   (f32.const inf)
  )
  (set_global $builtins/f
   (f32.const 1.25)
  )
  (set_global $builtins/f
   (f32.const 2)
  )
  (set_global $builtins/f
   (f32.const 1.25)
  )
  (set_global $builtins/f
   (f32.const 1)
  )
  (set_global $builtins/f
   (f32.const 2.5)
  )
  (set_global $builtins/f
   (f32.const 1.25)
  )
  (set_global $builtins/f
   (f32.const 1.25)
  )
  (set_global $builtins/f
   (f32.const 1.1180340051651)
  )
  (set_global $builtins/f
   (f32.const 1)
  )
  (set_global $builtins/b
   (f32.ne
    (tee_local $0
     (f32.const 1.25)
    )
    (get_local $0)
   )
  )
  (set_global $builtins/b
   (select
    (f32.ne
     (f32.abs
      (tee_local $0
       (f32.const 1.25)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $0)
     (get_local $0)
    )
   )
  )
  (set_global $builtins/F
   (f64.const nan:0x8000000000000)
  )
  (set_global $builtins/F
   (f64.const inf)
  )
  (set_global $builtins/F
   (f64.const 1.25)
  )
  (set_global $builtins/F
   (f64.const 2)
  )
  (set_global $builtins/F
   (f64.const 1.25)
  )
  (set_global $builtins/F
   (f64.const 1)
  )
  (set_global $builtins/F
   (f64.const 2.5)
  )
  (set_global $builtins/F
   (f64.const 1.25)
  )
  (set_global $builtins/F
   (f64.const 1)
  )
  (set_global $builtins/F
   (f64.const 1.118033988749895)
  )
  (set_global $builtins/F
   (f64.const 1)
  )
  (set_global $builtins/b
   (f64.ne
    (tee_local $1
     (f64.const 1.25)
    )
    (get_local $1)
   )
  )
  (set_global $builtins/b
   (select
    (f64.ne
     (f64.abs
      (tee_local $1
       (f64.const 1.25)
      )
     )
     (f64.const inf)
    )
    (i32.const 0)
    (f64.eq
     (get_local $1)
     (get_local $1)
    )
   )
  )
  (set_global $builtins/i
   (i32.load
    (i32.const 8)
   )
  )
  (i32.store
   (i32.const 8)
   (get_global $builtins/i)
  )
  (i32.store
   (i32.const 8)
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load
    (i32.const 8)
   )
  )
  (i64.store
   (i32.const 8)
   (get_global $builtins/I)
  )
  (i64.store
   (i32.const 8)
   (i64.load
    (i32.const 8)
   )
  )
  (set_global $builtins/f
   (f32.load
    (i32.const 8)
   )
  )
  (f32.store
   (i32.const 8)
   (get_global $builtins/f)
  )
  (f32.store
   (i32.const 8)
   (f32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/F
   (f64.load
    (i32.const 8)
   )
  )
  (f64.store
   (i32.const 8)
   (get_global $builtins/F)
  )
  (f64.store
   (i32.const 8)
   (f64.load
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.const 1067450368)
  )
  (set_global $builtins/f
   (f32.const 3.5032461608120427e-44)
  )
  (set_global $builtins/I
   (i64.const 4608308318706860032)
  )
  (set_global $builtins/F
   (f64.const 1.24e-322)
  )
  (drop
   (current_memory)
  )
  (drop
   (grow_memory
    (i32.const 1)
   )
  )
  (set_global $builtins/s
   (current_memory)
  )
  (set_global $builtins/s
   (grow_memory
    (i32.const 1)
   )
  )
  (set_global $builtins/i
   (i32.const 10)
  )
  (set_global $builtins/I
   (i64.const 200)
  )
  (set_global $builtins/f
   (f32.const 1.25)
  )
  (set_global $builtins/F
   (f64.const 25)
  )
  (if
   (f32.eq
    (tee_local $0
     (f32.const nan:0x400000)
    )
    (get_local $0)
   )
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $1
     (f64.const nan:0x8000000000000)
    )
    (get_local $1)
   )
   (unreachable)
  )
  (if
   (select
    (f32.ne
     (f32.abs
      (tee_local $0
       (f32.const nan:0x400000)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $0)
     (get_local $0)
    )
   )
   (unreachable)
  )
  (if
   (select
    (f32.ne
     (f32.abs
      (tee_local $0
       (f32.const inf)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $0)
     (get_local $0)
    )
   )
   (unreachable)
  )
  (if
   (select
    (f64.ne
     (f64.abs
      (tee_local $1
       (f64.const nan:0x8000000000000)
      )
     )
     (f64.const inf)
    )
    (i32.const 0)
    (f64.eq
     (get_local $1)
     (get_local $1)
    )
   )
   (unreachable)
  )
  (if
   (select
    (f64.ne
     (f64.abs
      (tee_local $1
       (f64.const inf)
      )
     )
     (f64.const inf)
    )
    (i32.const 0)
    (f64.eq
     (get_local $1)
     (get_local $1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (select
     (f32.ne
      (f32.abs
       (tee_local $0
        (f32.const 0)
       )
      )
      (f32.const inf)
     )
     (i32.const 0)
     (f32.eq
      (get_local $0)
      (get_local $0)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (select
     (f64.ne
      (f64.abs
       (tee_local $1
        (f64.const 0)
       )
      )
      (f64.const inf)
     )
     (i32.const 0)
     (f64.eq
      (get_local $1)
      (get_local $1)
     )
    )
   )
   (unreachable)
  )
 )
)
