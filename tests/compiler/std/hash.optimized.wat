(module
 (type $ii (func (param i32) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $v (func))
 (memory $0 1)
 (data (i32.const 16) "\01\00\00\00a")
 (data (i32.const 24) "\02\00\00\00a\00b")
 (data (i32.const 32) "\03\00\00\00a\00b\00c")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/internal/hash/hashStr (; 0 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (i32.const -2128831035)
  )
  (block $break|0
   (set_local $3
    (i32.shl
     (i32.load
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_u
      (get_local $1)
      (get_local $3)
     )
    )
    (set_local $2
     (i32.mul
      (i32.xor
       (get_local $2)
       (i32.load8_u offset=4
        (i32.add
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (i32.const 16777619)
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $std/hash/check (; 1 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (i32.const 1)
 )
 (func $~lib/internal/hash/hash32 (; 2 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (i32.mul
   (i32.xor
    (i32.mul
     (i32.xor
      (i32.mul
       (i32.xor
        (i32.mul
         (i32.xor
          (i32.and
           (get_local $0)
           (i32.const 255)
          )
          (i32.const -2128831035)
         )
         (i32.const 16777619)
        )
        (i32.and
         (i32.shr_u
          (get_local $0)
          (i32.const 8)
         )
         (i32.const 255)
        )
       )
       (i32.const 16777619)
      )
      (i32.and
       (i32.shr_u
        (get_local $0)
        (i32.const 16)
       )
       (i32.const 255)
      )
     )
     (i32.const 16777619)
    )
    (i32.shr_u
     (get_local $0)
     (i32.const 24)
    )
   )
   (i32.const 16777619)
  )
 )
 (func $~lib/internal/hash/hash64 (; 3 ;) (; has Stack IR ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (i32.mul
   (i32.xor
    (i32.mul
     (i32.xor
      (i32.mul
       (i32.xor
        (i32.mul
         (i32.xor
          (i32.mul
           (i32.xor
            (i32.mul
             (i32.xor
              (i32.mul
               (i32.xor
                (i32.mul
                 (i32.xor
                  (i32.and
                   (tee_local $1
                    (i32.wrap/i64
                     (get_local $0)
                    )
                   )
                   (i32.const 255)
                  )
                  (i32.const -2128831035)
                 )
                 (i32.const 16777619)
                )
                (i32.and
                 (i32.shr_u
                  (get_local $1)
                  (i32.const 8)
                 )
                 (i32.const 255)
                )
               )
               (i32.const 16777619)
              )
              (i32.and
               (i32.shr_u
                (get_local $1)
                (i32.const 16)
               )
               (i32.const 255)
              )
             )
             (i32.const 16777619)
            )
            (i32.shr_u
             (get_local $1)
             (i32.const 24)
            )
           )
           (i32.const 16777619)
          )
          (i32.and
           (tee_local $1
            (i32.wrap/i64
             (i64.shr_u
              (get_local $0)
              (i64.const 32)
             )
            )
           )
           (i32.const 255)
          )
         )
         (i32.const 16777619)
        )
        (i32.and
         (i32.shr_u
          (get_local $1)
          (i32.const 8)
         )
         (i32.const 255)
        )
       )
       (i32.const 16777619)
      )
      (i32.and
       (i32.shr_u
        (get_local $1)
        (i32.const 16)
       )
       (i32.const 255)
      )
     )
     (i32.const 16777619)
    )
    (i32.shr_u
     (get_local $1)
     (i32.const 24)
    )
   )
   (i32.const 16777619)
  )
 )
 (func $start (; 4 ;) (; has Stack IR ;) (type $v)
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hashStr
     (i32.const 0)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hashStr
     (i32.const 8)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hashStr
     (i32.const 16)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hashStr
     (i32.const 24)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hashStr
     (i32.const 32)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hash32
     (i32.const 0)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hash32
     (i32.const 1065353216)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hash32
     (i32.const 1066192077)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hash32
     (i32.const 0)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hash32
     (i32.const 2139095040)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hash32
     (i32.const 2143289344)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hash64
     (i64.const 0)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hash64
     (i64.const 4607182418800017408)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hash64
     (i64.const 4607632778762754458)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hash64
     (i64.const 0)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hash64
     (i64.const 9218868437227405312)
    )
   )
  )
  (drop
   (call $std/hash/check
    (call $~lib/internal/hash/hash64
     (i64.const 9221120237041090560)
    )
   )
  )
 )
)
