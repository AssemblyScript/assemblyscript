(module
 (type $v (func))
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/b (mut i32) (i32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $builtins/s (mut i32) (i32.const 0))
 (global $i8.MIN_VALUE i32 (i32.const -128))
 (global $i8.MAX_VALUE i32 (i32.const 127))
 (global $i16.MIN_VALUE i32 (i32.const -32768))
 (global $i16.MAX_VALUE i32 (i32.const 32767))
 (global $i32.MIN_VALUE i32 (i32.const -2147483648))
 (global $i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $i64.MIN_VALUE i64 (i64.const -9223372036854775808))
 (global $i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $u8.MIN_VALUE i32 (i32.const 0))
 (global $u8.MAX_VALUE i32 (i32.const 255))
 (global $u16.MIN_VALUE i32 (i32.const 0))
 (global $u16.MAX_VALUE i32 (i32.const 65535))
 (global $u32.MIN_VALUE i32 (i32.const 0))
 (global $u32.MAX_VALUE i32 (i32.const -1))
 (global $u64.MIN_VALUE i64 (i64.const 0))
 (global $u64.MAX_VALUE i64 (i64.const -1))
 (global $bool.MIN_VALUE i32 (i32.const 0))
 (global $bool.MAX_VALUE i32 (i32.const 1))
 (global $f32.MIN_VALUE f32 (f32.const -3402823466385288598117041e14))
 (global $f32.MAX_VALUE f32 (f32.const 3402823466385288598117041e14))
 (global $f32.MIN_SAFE_INTEGER f32 (f32.const -16777215))
 (global $f32.MAX_SAFE_INTEGER f32 (f32.const 16777215))
 (global $f32.EPSILON f32 (f32.const 1.1920928955078125e-07))
 (global $f64.MIN_VALUE f64 (f64.const -1797693134862315708145274e284))
 (global $f64.MAX_VALUE f64 (f64.const 1797693134862315708145274e284))
 (global $f64.MIN_SAFE_INTEGER f64 (f64.const -9007199254740991))
 (global $f64.MAX_SAFE_INTEGER f64 (f64.const 9007199254740991))
 (global $f64.EPSILON f64 (f64.const 2.220446049250313e-16))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "test" (func $builtins/test))
 (export "memory" (memory $0))
 (start $start)
 (func $builtins/test (; 0 ;) (type $v)
 )
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 f32)
  (local $5 f64)
  (drop
   (i32.clz
    (i32.const 1)
   )
  )
  (drop
   (i32.ctz
    (i32.const 1)
   )
  )
  (drop
   (i32.popcnt
    (i32.const 1)
   )
  )
  (drop
   (i32.rotl
    (i32.const 1)
    (i32.const 1)
   )
  )
  (drop
   (i32.rotr
    (i32.const 1)
    (i32.const 1)
   )
  )
  (drop
   (select
    (i32.sub
     (i32.const 0)
     (tee_local $0
      (i32.sub
       (i32.const 0)
       (i32.const 42)
      )
     )
    )
    (get_local $0)
    (i32.lt_s
     (get_local $0)
     (i32.const 0)
    )
   )
  )
  (drop
   (select
    (tee_local $0
     (i32.const 1)
    )
    (tee_local $1
     (i32.const 2)
    )
    (i32.gt_s
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (drop
   (select
    (tee_local $0
     (i32.const 1)
    )
    (tee_local $1
     (i32.const 2)
    )
    (i32.lt_s
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (set_global $builtins/i
   (i32.clz
    (i32.const 1)
   )
  )
  (set_global $builtins/i
   (i32.ctz
    (i32.const 1)
   )
  )
  (set_global $builtins/i
   (i32.popcnt
    (i32.const 1)
   )
  )
  (set_global $builtins/i
   (i32.rotl
    (i32.const 1)
    (i32.const 1)
   )
  )
  (set_global $builtins/i
   (i32.rotr
    (i32.const 1)
    (i32.const 1)
   )
  )
  (set_global $builtins/i
   (select
    (i32.sub
     (i32.const 0)
     (tee_local $0
      (i32.sub
       (i32.const 0)
       (i32.const 42)
      )
     )
    )
    (get_local $0)
    (i32.lt_s
     (get_local $0)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $builtins/i)
     (i32.const 42)
    )
   )
   (unreachable)
  )
  (set_global $builtins/i
   (select
    (tee_local $0
     (i32.const 1)
    )
    (tee_local $1
     (i32.const 2)
    )
    (i32.gt_s
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $builtins/i)
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (set_global $builtins/i
   (select
    (tee_local $0
     (i32.const 1)
    )
    (tee_local $1
     (i32.const 2)
    )
    (i32.lt_s
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $builtins/i)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (drop
   (i64.clz
    (i64.const 1)
   )
  )
  (drop
   (i64.ctz
    (i64.const 1)
   )
  )
  (drop
   (i64.popcnt
    (i64.const 1)
   )
  )
  (drop
   (i64.rotl
    (i64.const 1)
    (i64.const 1)
   )
  )
  (drop
   (i64.rotr
    (i64.const 1)
    (i64.const 1)
   )
  )
  (drop
   (select
    (i64.sub
     (i64.const 0)
     (tee_local $2
      (i64.sub
       (i64.const 0)
       (i64.const 42)
      )
     )
    )
    (get_local $2)
    (i64.lt_s
     (get_local $2)
     (i64.const 0)
    )
   )
  )
  (set_global $builtins/I
   (i64.clz
    (i64.const 1)
   )
  )
  (set_global $builtins/I
   (i64.ctz
    (i64.const 1)
   )
  )
  (set_global $builtins/I
   (i64.popcnt
    (i64.const 1)
   )
  )
  (set_global $builtins/I
   (i64.rotl
    (i64.const 1)
    (i64.const 1)
   )
  )
  (set_global $builtins/I
   (i64.rotr
    (i64.const 1)
    (i64.const 1)
   )
  )
  (set_global $builtins/I
   (select
    (i64.sub
     (i64.const 0)
     (tee_local $2
      (i64.sub
       (i64.const 0)
       (i64.const 42)
      )
     )
    )
    (get_local $2)
    (i64.lt_s
     (get_local $2)
     (i64.const 0)
    )
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (get_global $builtins/I)
     (i64.const 42)
    )
   )
   (unreachable)
  )
  (set_global $builtins/I
   (select
    (tee_local $2
     (i64.const 1)
    )
    (tee_local $3
     (i64.const 2)
    )
    (i64.gt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (get_global $builtins/I)
     (i64.const 2)
    )
   )
   (unreachable)
  )
  (set_global $builtins/I
   (select
    (tee_local $2
     (i64.const 1)
    )
    (tee_local $3
     (i64.const 2)
    )
    (i64.lt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $builtins/i)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (drop
   (f32.const nan:0x400000)
  )
  (drop
   (f32.const inf)
  )
  (drop
   (f32.abs
    (f32.const 1.25)
   )
  )
  (drop
   (f32.ceil
    (f32.const 1.25)
   )
  )
  (drop
   (f32.copysign
    (f32.const 1.25)
    (f32.const 2.5)
   )
  )
  (drop
   (f32.floor
    (f32.const 1.25)
   )
  )
  (drop
   (f32.max
    (f32.const 1.25)
    (f32.const 2.5)
   )
  )
  (drop
   (f32.min
    (f32.const 1.25)
    (f32.const 2.5)
   )
  )
  (drop
   (f32.nearest
    (f32.const 1.25)
   )
  )
  (drop
   (f32.sqrt
    (f32.const 1.25)
   )
  )
  (drop
   (f32.trunc
    (f32.const 1.25)
   )
  )
  (drop
   (f32.ne
    (tee_local $4
     (f32.const 1.25)
    )
    (get_local $4)
   )
  )
  (drop
   (select
    (f32.ne
     (f32.abs
      (tee_local $4
       (f32.const 1.25)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $4)
     (get_local $4)
    )
   )
  )
  (set_global $builtins/f
   (f32.const nan:0x400000)
  )
  (set_global $builtins/f
   (f32.const inf)
  )
  (set_global $builtins/f
   (f32.abs
    (f32.const 1.25)
   )
  )
  (set_global $builtins/f
   (f32.ceil
    (f32.const 1.25)
   )
  )
  (set_global $builtins/f
   (f32.copysign
    (f32.const 1.25)
    (f32.const 2.5)
   )
  )
  (set_global $builtins/f
   (f32.floor
    (f32.const 1.25)
   )
  )
  (set_global $builtins/f
   (f32.max
    (f32.const 1.25)
    (f32.const 2.5)
   )
  )
  (set_global $builtins/f
   (f32.min
    (f32.const 1.25)
    (f32.const 2.5)
   )
  )
  (set_global $builtins/f
   (f32.nearest
    (f32.const 1.25)
   )
  )
  (set_global $builtins/f
   (f32.sqrt
    (f32.const 1.25)
   )
  )
  (set_global $builtins/f
   (f32.trunc
    (f32.const 1.25)
   )
  )
  (set_global $builtins/b
   (f32.ne
    (tee_local $4
     (f32.const 1.25)
    )
    (get_local $4)
   )
  )
  (set_global $builtins/b
   (select
    (f32.ne
     (f32.abs
      (tee_local $4
       (f32.const 1.25)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $4)
     (get_local $4)
    )
   )
  )
  (drop
   (f64.const nan:0x8000000000000)
  )
  (drop
   (f64.const inf)
  )
  (drop
   (f64.const nan:0x8000000000000)
  )
  (drop
   (f64.const inf)
  )
  (drop
   (f64.abs
    (f64.const 1.25)
   )
  )
  (drop
   (f64.ceil
    (f64.const 1.25)
   )
  )
  (drop
   (f64.copysign
    (f64.const 1.25)
    (f64.const 2.5)
   )
  )
  (drop
   (f64.floor
    (f64.const 1.25)
   )
  )
  (drop
   (f64.max
    (f64.const 1.25)
    (f64.const 2.5)
   )
  )
  (drop
   (f64.min
    (f64.const 1.25)
    (f64.const 2.5)
   )
  )
  (drop
   (f64.nearest
    (f64.const 1.25)
   )
  )
  (drop
   (f64.sqrt
    (f64.const 1.25)
   )
  )
  (drop
   (f64.trunc
    (f64.const 1.25)
   )
  )
  (drop
   (f64.ne
    (tee_local $5
     (f64.const 1.25)
    )
    (get_local $5)
   )
  )
  (drop
   (select
    (f64.ne
     (f64.abs
      (tee_local $5
       (f64.const 1.25)
      )
     )
     (f64.const inf)
    )
    (i32.const 0)
    (f64.eq
     (get_local $5)
     (get_local $5)
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
   (f64.abs
    (f64.const 1.25)
   )
  )
  (set_global $builtins/F
   (f64.ceil
    (f64.const 1.25)
   )
  )
  (set_global $builtins/F
   (f64.copysign
    (f64.const 1.25)
    (f64.const 2.5)
   )
  )
  (set_global $builtins/F
   (f64.floor
    (f64.const 1.25)
   )
  )
  (set_global $builtins/F
   (f64.max
    (f64.const 1.25)
    (f64.const 2.5)
   )
  )
  (set_global $builtins/F
   (f64.min
    (f64.const 1.25)
    (f64.const 2.5)
   )
  )
  (set_global $builtins/F
   (f64.nearest
    (f64.const 1.25)
   )
  )
  (set_global $builtins/F
   (f64.sqrt
    (f64.const 1.25)
   )
  )
  (set_global $builtins/F
   (f64.trunc
    (f64.const 1.25)
   )
  )
  (set_global $builtins/b
   (f64.ne
    (tee_local $5
     (f64.const 1.25)
    )
    (get_local $5)
   )
  )
  (set_global $builtins/b
   (select
    (f64.ne
     (f64.abs
      (tee_local $5
       (f64.const 1.25)
      )
     )
     (f64.const inf)
    )
    (i32.const 0)
    (f64.eq
     (get_local $5)
     (get_local $5)
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
  (drop
   (i32.reinterpret/f32
    (f32.const 1.25)
   )
  )
  (drop
   (f32.reinterpret/i32
    (i32.const 25)
   )
  )
  (drop
   (i64.reinterpret/f64
    (f64.const 1.25)
   )
  )
  (drop
   (f64.reinterpret/i64
    (i64.const 25)
   )
  )
  (set_global $builtins/i
   (i32.reinterpret/f32
    (f32.const 1.25)
   )
  )
  (set_global $builtins/f
   (f32.reinterpret/i32
    (i32.const 25)
   )
  )
  (set_global $builtins/I
   (i64.reinterpret/f64
    (f64.const 1.25)
   )
  )
  (set_global $builtins/F
   (f64.reinterpret/i64
    (i64.const 25)
   )
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
  (drop
   (select
    (i32.const 10)
    (i32.const 20)
    (i32.const 1)
   )
  )
  (drop
   (select
    (i64.const 100)
    (i64.const 200)
    (i32.const 0)
   )
  )
  (drop
   (select
    (f32.const 1.25)
    (f32.const 2.5)
    (i32.const 1)
   )
  )
  (drop
   (select
    (f64.const 12.5)
    (f64.const 25)
    (i32.const 0)
   )
  )
  (set_global $builtins/i
   (select
    (i32.const 10)
    (i32.const 20)
    (i32.const 1)
   )
  )
  (set_global $builtins/I
   (select
    (i64.const 100)
    (i64.const 200)
    (i32.const 0)
   )
  )
  (set_global $builtins/f
   (select
    (f32.const 1.25)
    (f32.const 2.5)
    (i32.const 1)
   )
  )
  (set_global $builtins/F
   (select
    (f64.const 12.5)
    (f64.const 25)
    (i32.const 0)
   )
  )
  (if
   (i32.const 0)
   (unreachable)
  )
  (drop
   (i32.const 1)
  )
  (drop
   (i32.const 2)
  )
  (drop
   (i32.const 4)
  )
  (drop
   (i32.const 8)
  )
  (drop
   (i32.const 4)
  )
  (drop
   (i32.const 1)
  )
  (drop
   (i32.const 1)
  )
  (drop
   (i32.const 2)
  )
  (drop
   (i32.const 4)
  )
  (drop
   (i32.const 8)
  )
  (drop
   (i32.const 4)
  )
  (drop
   (i32.const 4)
  )
  (drop
   (i32.const 8)
  )
  (if
   (i32.eqz
    (f64.ne
     (f64.const nan:0x8000000000000)
     (f64.const nan:0x8000000000000)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.ne
     (tee_local $4
      (f32.const nan:0x400000)
     )
     (get_local $4)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.ne
     (tee_local $5
      (f64.const nan:0x8000000000000)
     )
     (get_local $5)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eqz
     (select
      (f32.ne
       (f32.abs
        (tee_local $4
         (f32.const nan:0x400000)
        )
       )
       (f32.const inf)
      )
      (i32.const 0)
      (f32.eq
       (get_local $4)
       (get_local $4)
      )
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eqz
     (select
      (f32.ne
       (f32.abs
        (tee_local $4
         (f32.const inf)
        )
       )
       (f32.const inf)
      )
      (i32.const 0)
      (f32.eq
       (get_local $4)
       (get_local $4)
      )
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eqz
     (select
      (f64.ne
       (f64.abs
        (tee_local $5
         (f64.const nan:0x8000000000000)
        )
       )
       (f64.const inf)
      )
      (i32.const 0)
      (f64.eq
       (get_local $5)
       (get_local $5)
      )
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eqz
     (select
      (f64.ne
       (f64.abs
        (tee_local $5
         (f64.const inf)
        )
       )
       (f64.const inf)
      )
      (i32.const 0)
      (f64.eq
       (get_local $5)
       (get_local $5)
      )
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (select
     (f32.ne
      (f32.abs
       (tee_local $4
        (f32.const 0)
       )
      )
      (f32.const inf)
     )
     (i32.const 0)
     (f32.eq
      (get_local $4)
      (get_local $4)
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
       (tee_local $5
        (f64.const 0)
       )
      )
      (f64.const inf)
     )
     (i32.const 0)
     (f64.eq
      (get_local $5)
      (get_local $5)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const -128)
     (i32.const -128)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 127)
     (i32.const 127)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const -32768)
     (i32.const -32768)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 32767)
     (i32.const 32767)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const -2147483648)
     (i32.const -2147483648)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 2147483647)
     (i32.const 2147483647)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.const -9223372036854775808)
     (i64.const -9223372036854775808)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.const 9223372036854775807)
     (i64.const 9223372036854775807)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 255)
     (i32.const 255)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 65535)
     (i32.const 65535)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const -1)
     (i32.const -1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.const 0)
     (i64.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (i64.const -1)
     (i64.const -1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 1)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 1)
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.const -3402823466385288598117041e14)
     (f32.neg
      (f32.const 3402823466385288598117041e14)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.const 3402823466385288598117041e14)
     (f32.const 3402823466385288598117041e14)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.const -16777215)
     (f32.neg
      (f32.const 16777215)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.const 16777215)
     (f32.const 16777215)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.const 1.1920928955078125e-07)
     (f32.const 1.1920928955078125e-07)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.eq
     (f64.const -1797693134862315708145274e284)
     (f64.neg
      (f64.const 1797693134862315708145274e284)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.eq
     (f64.const 1797693134862315708145274e284)
     (f64.const 1797693134862315708145274e284)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.eq
     (f64.const -9007199254740991)
     (f64.neg
      (f64.const 9007199254740991)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.eq
     (f64.const 9007199254740991)
     (f64.const 9007199254740991)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (f64.eq
     (f64.const 2.220446049250313e-16)
     (f64.const 2.220446049250313e-16)
    )
   )
   (unreachable)
  )
 )
)
(;
[program.elements]
  GLOBAL: NaN
  GLOBAL: Infinity
  FUNCTION_PROTOTYPE: isNaN
  FUNCTION_PROTOTYPE: isFinite
  FUNCTION_PROTOTYPE: clz
  FUNCTION_PROTOTYPE: ctz
  FUNCTION_PROTOTYPE: popcnt
  FUNCTION_PROTOTYPE: rotl
  FUNCTION_PROTOTYPE: rotr
  FUNCTION_PROTOTYPE: abs
  FUNCTION_PROTOTYPE: max
  FUNCTION_PROTOTYPE: min
  FUNCTION_PROTOTYPE: ceil
  FUNCTION_PROTOTYPE: floor
  FUNCTION_PROTOTYPE: copysign
  FUNCTION_PROTOTYPE: nearest
  FUNCTION_PROTOTYPE: reinterpret
  FUNCTION_PROTOTYPE: sqrt
  FUNCTION_PROTOTYPE: trunc
  FUNCTION_PROTOTYPE: load
  FUNCTION_PROTOTYPE: store
  FUNCTION_PROTOTYPE: sizeof
  FUNCTION_PROTOTYPE: select
  FUNCTION_PROTOTYPE: unreachable
  FUNCTION_PROTOTYPE: current_memory
  FUNCTION_PROTOTYPE: grow_memory
  FUNCTION_PROTOTYPE: parseInt
  FUNCTION_PROTOTYPE: parseFloat
  FUNCTION_PROTOTYPE: changetype
  FUNCTION_PROTOTYPE: assert
  FUNCTION_PROTOTYPE: i8
  FUNCTION_PROTOTYPE: i16
  FUNCTION_PROTOTYPE: i32
  FUNCTION_PROTOTYPE: i64
  FUNCTION_PROTOTYPE: u8
  FUNCTION_PROTOTYPE: u16
  FUNCTION_PROTOTYPE: u32
  FUNCTION_PROTOTYPE: u64
  FUNCTION_PROTOTYPE: bool
  FUNCTION_PROTOTYPE: f32
  FUNCTION_PROTOTYPE: f64
  FUNCTION_PROTOTYPE: isize
  FUNCTION_PROTOTYPE: usize
  GLOBAL: HEAP_BASE
  GLOBAL: builtins/b
  GLOBAL: builtins/i
  GLOBAL: builtins/I
  GLOBAL: builtins/f
  GLOBAL: builtins/F
  GLOBAL: builtins/s
  FUNCTION_PROTOTYPE: builtins/test
[program.exports]
  FUNCTION_PROTOTYPE: builtins/test
;)
