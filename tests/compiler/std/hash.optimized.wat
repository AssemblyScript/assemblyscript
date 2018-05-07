(module
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $fi (func (param f32) (result i32)))
 (type $Fi (func (param f64) (result i32)))
 (type $v (func))
 (import "env" "logi" (func $std/hash/logi (param i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00a")
 (data (i32.const 16) "\02\00\00\00a\00b")
 (data (i32.const 24) "\03\00\00\00a\00b\00c")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/internal/hash/hash<usize> (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
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
            (get_local $0)
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
 )
 (func $~lib/internal/hash/hash<String> (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (i32.const -2128831035)
  )
  (set_local $3
   (i32.shl
    (i32.load
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $1)
     (get_local $3)
    )
    (block
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
     (br $continue|0)
    )
   )
  )
  (get_local $2)
 )
 (func $~lib/internal/hash/hash<f32> (; 3 ;) (type $fi) (param $0 f32) (result i32)
  (local $1 i32)
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
            (i32.reinterpret/f32
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
 )
 (func $~lib/internal/hash/hash<f64> (; 4 ;) (type $Fi) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i64)
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
                     (tee_local $2
                      (i64.reinterpret/f64
                       (get_local $0)
                      )
                     )
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
              (get_local $2)
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
 (func $start (; 5 ;) (type $v)
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<usize>
    (i32.const 0)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<String>
    (i32.const 4)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<String>
    (i32.const 8)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<String>
    (i32.const 16)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<String>
    (i32.const 24)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<f32>
    (f32.const 0)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<f32>
    (f32.const 1)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<f32>
    (f32.const 1.100000023841858)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<f32>
    (f32.const 0)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<f32>
    (f32.const inf)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<f32>
    (f32.const nan:0x400000)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<f64>
    (f64.const 0)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<f64>
    (f64.const 1)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<f64>
    (f64.const 1.1)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<f64>
    (f64.const 0)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<f64>
    (f64.const inf)
   )
  )
  (call $std/hash/logi
   (call $~lib/internal/hash/hash<f64>
    (f64.const nan:0x8000000000000)
   )
  )
 )
)
