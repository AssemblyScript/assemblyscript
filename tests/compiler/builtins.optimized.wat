(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $FFF (func (param f64 f64) (result f64)))
 (type $fff (func (param f32 f32) (result f32)))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $builtins/b (mut i32) (i32.const 0))
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $builtins/u (mut i32) (i32.const 0))
 (global $builtins/U (mut i64) (i64.const 0))
 (global $builtins/s (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 4) "\0b\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s")
 (data (i32.const 32) "\01\00\00\001")
 (export "test" (func $builtins/test))
 (export "memory" (memory $0))
 (start $start)
 (func $builtins/test (; 1 ;) (type $v)
  (nop)
 )
 (func $fmod (; 2 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (block $folding-inner0
   (set_local $3
    (i32.wrap/i64
     (i64.and
      (i64.shr_u
       (tee_local $2
        (i64.reinterpret/f64
         (get_local $0)
        )
       )
       (i64.const 52)
      )
      (i64.const 2047)
     )
    )
   )
   (set_local $6
    (i32.wrap/i64
     (i64.and
      (i64.shr_u
       (tee_local $5
        (i64.reinterpret/f64
         (get_local $1)
        )
       )
       (i64.const 52)
      )
      (i64.const 2047)
     )
    )
   )
   (if
    (i32.and
     (if (result i32)
      (tee_local $7
       (i32.and
        (if (result i32)
         (tee_local $7
          (i64.eq
           (i64.shl
            (get_local $5)
            (i64.const 1)
           )
           (i64.const 0)
          )
         )
         (get_local $7)
         (f64.ne
          (tee_local $8
           (get_local $1)
          )
          (get_local $8)
         )
        )
        (i32.const 1)
       )
      )
      (get_local $7)
      (i32.eq
       (get_local $3)
       (i32.const 2047)
      )
     )
     (i32.const 1)
    )
    (return
     (f64.div
      (f64.mul
       (get_local $0)
       (get_local $1)
      )
      (f64.mul
       (get_local $0)
       (get_local $1)
      )
     )
    )
   )
   (if
    (i64.le_u
     (i64.shl
      (get_local $2)
      (i64.const 1)
     )
     (i64.shl
      (get_local $5)
      (i64.const 1)
     )
    )
    (block
     (br_if $folding-inner0
      (i64.eq
       (i64.shl
        (get_local $2)
        (i64.const 1)
       )
       (i64.shl
        (get_local $5)
        (i64.const 1)
       )
      )
     )
     (return
      (get_local $0)
     )
    )
   )
   (set_local $7
    (i32.wrap/i64
     (i64.shr_u
      (get_local $2)
      (i64.const 63)
     )
    )
   )
   (set_local $2
    (if (result i64)
     (get_local $3)
     (i64.or
      (i64.and
       (get_local $2)
       (i64.const 4503599627370495)
      )
      (i64.const 4503599627370496)
     )
     (block (result i64)
      (set_local $4
       (i64.shl
        (get_local $2)
        (i64.const 12)
       )
      )
      (loop $continue|0
       (if
        (i64.eqz
         (i64.shr_u
          (get_local $4)
          (i64.const 63)
         )
        )
        (block
         (set_local $3
          (i32.sub
           (get_local $3)
           (i32.const 1)
          )
         )
         (set_local $4
          (i64.shl
           (get_local $4)
           (i64.const 1)
          )
         )
         (br $continue|0)
        )
       )
      )
      (i64.shl
       (get_local $2)
       (i64.extend_u/i32
        (i32.sub
         (i32.const 1)
         (get_local $3)
        )
       )
      )
     )
    )
   )
   (set_local $5
    (if (result i64)
     (get_local $6)
     (i64.or
      (i64.and
       (get_local $5)
       (i64.const 4503599627370495)
      )
      (i64.const 4503599627370496)
     )
     (block (result i64)
      (set_local $4
       (i64.shl
        (get_local $5)
        (i64.const 12)
       )
      )
      (loop $continue|1
       (if
        (i64.eqz
         (i64.shr_u
          (get_local $4)
          (i64.const 63)
         )
        )
        (block
         (set_local $6
          (i32.sub
           (get_local $6)
           (i32.const 1)
          )
         )
         (set_local $4
          (i64.shl
           (get_local $4)
           (i64.const 1)
          )
         )
         (br $continue|1)
        )
       )
      )
      (i64.shl
       (get_local $5)
       (i64.extend_u/i32
        (i32.sub
         (i32.const 1)
         (get_local $6)
        )
       )
      )
     )
    )
   )
   (loop $continue|2
    (if
     (i32.gt_s
      (get_local $3)
      (get_local $6)
     )
     (block
      (if
       (i64.eqz
        (i64.shr_u
         (tee_local $4
          (i64.sub
           (get_local $2)
           (get_local $5)
          )
         )
         (i64.const 63)
        )
       )
       (block
        (br_if $folding-inner0
         (i64.eqz
          (get_local $4)
         )
        )
        (set_local $2
         (get_local $4)
        )
       )
      )
      (set_local $2
       (i64.shl
        (get_local $2)
        (i64.const 1)
       )
      )
      (set_local $3
       (i32.sub
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $continue|2)
     )
    )
   )
   (if
    (i64.eqz
     (i64.shr_u
      (tee_local $4
       (i64.sub
        (get_local $2)
        (get_local $5)
       )
      )
      (i64.const 63)
     )
    )
    (block
     (br_if $folding-inner0
      (i64.eqz
       (get_local $4)
      )
     )
     (set_local $2
      (get_local $4)
     )
    )
   )
   (loop $continue|3
    (if
     (i64.eqz
      (i64.shr_u
       (get_local $2)
       (i64.const 52)
      )
     )
     (block
      (set_local $3
       (i32.sub
        (get_local $3)
        (i32.const 1)
       )
      )
      (set_local $2
       (i64.shl
        (get_local $2)
        (i64.const 1)
       )
      )
      (br $continue|3)
     )
    )
   )
   (return
    (f64.reinterpret/i64
     (i64.or
      (tee_local $2
       (select
        (i64.or
         (i64.sub
          (get_local $2)
          (i64.const 4503599627370496)
         )
         (i64.shl
          (i64.extend_u/i32
           (get_local $3)
          )
          (i64.const 52)
         )
        )
        (i64.shr_u
         (get_local $2)
         (i64.extend_u/i32
          (i32.sub
           (i32.const 1)
           (get_local $3)
          )
         )
        )
        (i32.gt_s
         (get_local $3)
         (i32.const 0)
        )
       )
      )
      (i64.shl
       (i64.extend_u/i32
        (get_local $7)
       )
       (i64.const 63)
      )
     )
    )
   )
  )
  (f64.mul
   (f64.const 0)
   (get_local $0)
  )
 )
 (func $fmodf (; 3 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  (block $folding-inner0
   (set_local $4
    (i32.and
     (i32.shr_u
      (tee_local $2
       (i32.reinterpret/f32
        (get_local $0)
       )
      )
      (i32.const 23)
     )
     (i32.const 255)
    )
   )
   (set_local $6
    (i32.and
     (i32.shr_u
      (tee_local $5
       (i32.reinterpret/f32
        (get_local $1)
       )
      )
      (i32.const 23)
     )
     (i32.const 255)
    )
   )
   (if
    (i32.and
     (if (result i32)
      (tee_local $3
       (i32.and
        (if (result i32)
         (tee_local $3
          (i32.eqz
           (i32.shl
            (get_local $5)
            (i32.const 1)
           )
          )
         )
         (get_local $3)
         (f32.ne
          (tee_local $7
           (get_local $1)
          )
          (get_local $7)
         )
        )
        (i32.const 1)
       )
      )
      (get_local $3)
      (i32.eq
       (get_local $4)
       (i32.const 255)
      )
     )
     (i32.const 1)
    )
    (return
     (f32.div
      (f32.mul
       (get_local $0)
       (get_local $1)
      )
      (f32.mul
       (get_local $0)
       (get_local $1)
      )
     )
    )
   )
   (if
    (i32.le_u
     (i32.shl
      (get_local $2)
      (i32.const 1)
     )
     (i32.shl
      (get_local $5)
      (i32.const 1)
     )
    )
    (block
     (br_if $folding-inner0
      (i32.eq
       (i32.shl
        (get_local $2)
        (i32.const 1)
       )
       (i32.shl
        (get_local $5)
        (i32.const 1)
       )
      )
     )
     (return
      (get_local $0)
     )
    )
   )
   (set_local $8
    (i32.and
     (get_local $2)
     (i32.const -2147483648)
    )
   )
   (set_local $2
    (if (result i32)
     (get_local $4)
     (i32.or
      (i32.and
       (get_local $2)
       (i32.const 8388607)
      )
      (i32.const 8388608)
     )
     (block (result i32)
      (set_local $3
       (i32.shl
        (get_local $2)
        (i32.const 9)
       )
      )
      (loop $continue|0
       (if
        (i32.eqz
         (i32.shr_u
          (get_local $3)
          (i32.const 31)
         )
        )
        (block
         (set_local $4
          (i32.sub
           (get_local $4)
           (i32.const 1)
          )
         )
         (set_local $3
          (i32.shl
           (get_local $3)
           (i32.const 1)
          )
         )
         (br $continue|0)
        )
       )
      )
      (i32.shl
       (get_local $2)
       (i32.sub
        (i32.const 1)
        (get_local $4)
       )
      )
     )
    )
   )
   (set_local $5
    (if (result i32)
     (get_local $6)
     (i32.or
      (i32.and
       (get_local $5)
       (i32.const 8388607)
      )
      (i32.const 8388608)
     )
     (block (result i32)
      (set_local $3
       (i32.shl
        (get_local $5)
        (i32.const 9)
       )
      )
      (loop $continue|1
       (if
        (i32.eqz
         (i32.shr_u
          (get_local $3)
          (i32.const 31)
         )
        )
        (block
         (set_local $6
          (i32.sub
           (get_local $6)
           (i32.const 1)
          )
         )
         (set_local $3
          (i32.shl
           (get_local $3)
           (i32.const 1)
          )
         )
         (br $continue|1)
        )
       )
      )
      (i32.shl
       (get_local $5)
       (i32.sub
        (i32.const 1)
        (get_local $6)
       )
      )
     )
    )
   )
   (loop $continue|2
    (if
     (i32.gt_s
      (get_local $4)
      (get_local $6)
     )
     (block
      (if
       (i32.eqz
        (i32.shr_u
         (tee_local $3
          (i32.sub
           (get_local $2)
           (get_local $5)
          )
         )
         (i32.const 31)
        )
       )
       (block
        (br_if $folding-inner0
         (i32.eqz
          (get_local $3)
         )
        )
        (set_local $2
         (get_local $3)
        )
       )
      )
      (set_local $2
       (i32.shl
        (get_local $2)
        (i32.const 1)
       )
      )
      (set_local $4
       (i32.sub
        (get_local $4)
        (i32.const 1)
       )
      )
      (br $continue|2)
     )
    )
   )
   (if
    (i32.eqz
     (i32.shr_u
      (tee_local $3
       (i32.sub
        (get_local $2)
        (get_local $5)
       )
      )
      (i32.const 31)
     )
    )
    (block
     (br_if $folding-inner0
      (i32.eqz
       (get_local $3)
      )
     )
     (set_local $2
      (get_local $3)
     )
    )
   )
   (loop $continue|3
    (if
     (i32.eqz
      (i32.shr_u
       (get_local $2)
       (i32.const 23)
      )
     )
     (block
      (set_local $4
       (i32.sub
        (get_local $4)
        (i32.const 1)
       )
      )
      (set_local $2
       (i32.shl
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $continue|3)
     )
    )
   )
   (return
    (f32.reinterpret/i32
     (i32.or
      (tee_local $2
       (select
        (i32.or
         (i32.sub
          (get_local $2)
          (i32.const 8388608)
         )
         (i32.shl
          (get_local $4)
          (i32.const 23)
         )
        )
        (i32.shr_u
         (get_local $2)
         (i32.sub
          (i32.const 1)
          (get_local $4)
         )
        )
        (i32.gt_s
         (get_local $4)
         (i32.const 0)
        )
       )
      )
      (get_local $8)
     )
    )
   )
  )
  (f32.mul
   (f32.const 0)
   (get_local $0)
  )
 )
 (func $start (; 4 ;) (type $v)
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
    (tee_local $2
     (i32.const -42)
    )
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
    (i32.gt_s
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 34)
     (i32.const 19)
    )
    (unreachable)
   )
  )
  (set_global $builtins/i
   (select
    (tee_local $2
     (i32.const 1)
    )
    (i32.const 2)
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 35)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  (set_global $builtins/i
   (select
    (i32.const 1)
    (i32.const 2)
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 36)
     (i32.const 20)
    )
    (unreachable)
   )
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
    (tee_local $4
     (i64.const -42)
    )
    (i64.sub
     (i64.const 0)
     (get_local $4)
    )
    (i64.gt_s
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 52)
     (i32.const 19)
    )
    (unreachable)
   )
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 53)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  (set_global $builtins/I
   (select
    (i64.const 1)
    (i64.const 2)
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 54)
     (i32.const 20)
    )
    (unreachable)
   )
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
      (f32.const 1.25)
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
      (f64.const 1.25)
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
   (i32.load8_s
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load16_s
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load8_u
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load16_u
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load8_u
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load16_u
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load8_s
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load16_s
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load8_s
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load16_s
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load32_s
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load
    (i32.const 8)
   )
  )
  (set_global $builtins/U
   (i64.load8_u
    (i32.const 8)
   )
  )
  (set_global $builtins/U
   (i64.load16_u
    (i32.const 8)
   )
  )
  (set_global $builtins/U
   (i64.load32_u
    (i32.const 8)
   )
  )
  (set_global $builtins/U
   (i64.load
    (i32.const 8)
   )
  )
  (i32.store8
   (i32.const 8)
   (i32.const 1)
  )
  (i32.store16
   (i32.const 8)
   (i32.const 1)
  )
  (i32.store
   (i32.const 8)
   (i32.const 1)
  )
  (i64.store8
   (i32.const 8)
   (i64.const 1)
  )
  (i64.store16
   (i32.const 8)
   (i64.const 1)
  )
  (i64.store32
   (i32.const 8)
   (i64.const 1)
  )
  (i64.store
   (i32.const 8)
   (i64.const 1)
  )
  (i64.store
   (i32.const 8)
   (i64.const 1)
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
   (i32.eqz
    (get_global $builtins/i)
   )
   (unreachable)
  )
  (if
   (f32.eq
    (tee_local $0
     (f32.const nan:0x400000)
    )
    (get_local $0)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 244)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.eq
    (tee_local $1
     (f64.const nan:0x8000000000000)
    )
    (get_local $1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 245)
     (i32.const 0)
    )
    (unreachable)
   )
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 246)
     (i32.const 0)
    )
    (unreachable)
   )
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 247)
     (i32.const 0)
    )
    (unreachable)
   )
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 248)
     (i32.const 0)
    )
    (unreachable)
   )
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 249)
     (i32.const 0)
    )
    (unreachable)
   )
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 250)
     (i32.const 0)
    )
    (unreachable)
   )
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 251)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.eq
    (tee_local $1
     (call $fmod
      (f64.const 1)
      (f64.const nan:0x8000000000000)
     )
    )
    (get_local $1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 295)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $fmod
     (f64.const 1.5)
     (f64.const 1)
    )
    (f64.const 0.5)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 296)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.lt
     (f64.sub
      (call $fmod
       (f64.const 9.2)
       (f64.const 2)
      )
      (f64.const 1.2)
     )
     (f64.const 2.220446049250313e-16)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 297)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.lt
     (f64.sub
      (call $fmod
       (f64.const 9.2)
       (f64.const 3.7)
      )
      (f64.const 1.8)
     )
     (f64.const 2.220446049250313e-16)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 298)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f32.eq
    (tee_local $0
     (call $fmodf
      (f32.const 1)
      (f32.const nan:0x400000)
     )
    )
    (get_local $0)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 300)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f32.ne
    (call $fmodf
     (f32.const 1.5)
     (f32.const 1)
    )
    (f32.const 0.5)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 301)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f32.lt
     (f32.sub
      (call $fmodf
       (f32.const 9.199999809265137)
       (f32.const 2)
      )
      (f32.const 1.2000000476837158)
     )
     (f32.const 1.1920928955078125e-07)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 302)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f32.lt
     (f32.sub
      (call $fmodf
       (f32.const 9.199999809265137)
       (f32.const 3.700000047683716)
      )
      (f32.const 1.7999999523162842)
     )
     (f32.const 1.1920928955078125e-07)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 303)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $fmod
     (f64.const 1.5)
     (f64.const 1)
    )
    (f64.const 0.5)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 305)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f32.ne
    (call $fmodf
     (f32.const 1.5)
     (f32.const 1)
    )
    (f32.const 0.5)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 306)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
