(module
 (type $iiiv (func (param i32 i32 i32)))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "compute" (func $assembly/index/compute))
 (export "memory" (memory $0))
 (func $assembly/index/compute (; 0 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (local $9 f64)
  (local $10 i32)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  ;;@ assembly/index.ts:5:2
  (set_local $3
   ;;@ assembly/index.ts:5:19
   (f64.div
    (f64.convert_u/i32
     (get_local $0)
    )
    ;;@ assembly/index.ts:5:27
    (f64.const 1.6)
   )
  )
  ;;@ assembly/index.ts:6:2
  (set_local $4
   ;;@ assembly/index.ts:6:19
   (f64.div
    (f64.convert_u/i32
     (get_local $1)
    )
    ;;@ assembly/index.ts:6:28
    (f64.const 2)
   )
  )
  ;;@ assembly/index.ts:7:2
  (set_local $5
   ;;@ assembly/index.ts:7:14
   (f64.div
    (f64.const 4)
    (f64.convert_u/i32
     ;;@ assembly/index.ts:7:20
     (get_local $0)
    )
   )
  )
  ;;@ assembly/index.ts:8:2
  (block $break|0
   ;;@ assembly/index.ts:8:7
   (set_local $6
    ;;@ assembly/index.ts:8:20
    (i32.const 0)
   )
   (loop $continue|0
    (if
     ;;@ assembly/index.ts:8:23
     (i32.lt_u
      (get_local $6)
      ;;@ assembly/index.ts:8:27
      (get_local $1)
     )
     (block
      (block
       ;;@ assembly/index.ts:9:4
       (set_local $7
        ;;@ assembly/index.ts:9:20
        (f64.mul
         (f64.sub
          (f64.convert_u/i32
           ;;@ assembly/index.ts:9:21
           (get_local $6)
          )
          ;;@ assembly/index.ts:9:25
          (get_local $4)
         )
         ;;@ assembly/index.ts:9:39
         (get_local $5)
        )
       )
       ;;@ assembly/index.ts:10:4
       (block $break|1
        ;;@ assembly/index.ts:10:9
        (set_local $8
         ;;@ assembly/index.ts:10:22
         (i32.const 0)
        )
        (loop $continue|1
         (if
          ;;@ assembly/index.ts:10:25
          (i32.lt_u
           (get_local $8)
           ;;@ assembly/index.ts:10:29
           (get_local $0)
          )
          (block
           (block
            ;;@ assembly/index.ts:11:6
            (set_local $9
             ;;@ assembly/index.ts:11:17
             (f64.mul
              (f64.sub
               (f64.convert_u/i32
                ;;@ assembly/index.ts:11:18
                (get_local $8)
               )
               ;;@ assembly/index.ts:11:22
               (get_local $3)
              )
              ;;@ assembly/index.ts:11:36
              (get_local $5)
             )
            )
            ;;@ assembly/index.ts:12:6
            (set_local $10
             ;;@ assembly/index.ts:12:22
             (i32.const 0)
            )
            ;;@ assembly/index.ts:13:6
            (nop)
            ;;@ assembly/index.ts:14:6
            (block $break|2
             (block
              (set_local $13
               ;;@ assembly/index.ts:14:20
               (f64.const 0)
              )
              (set_local $14
               ;;@ assembly/index.ts:14:30
               (f64.const 0)
              )
             )
             (loop $continue|2
              (if
               ;;@ assembly/index.ts:14:35
               (f64.le
                (f64.add
                 (tee_local $11
                  ;;@ assembly/index.ts:14:43
                  (f64.mul
                   (get_local $13)
                   ;;@ assembly/index.ts:14:48
                   (get_local $13)
                  )
                 )
                 ;;@ assembly/index.ts:14:54
                 (tee_local $12
                  ;;@ assembly/index.ts:14:62
                  (f64.mul
                   (get_local $14)
                   ;;@ assembly/index.ts:14:67
                   (get_local $14)
                  )
                 )
                )
                ;;@ assembly/index.ts:14:74
                (f64.const 4)
               )
               (block
                (block
                 ;;@ assembly/index.ts:15:8
                 (set_local $15
                  ;;@ assembly/index.ts:15:16
                  (f64.add
                   (f64.sub
                    (get_local $11)
                    ;;@ assembly/index.ts:15:23
                    (get_local $12)
                   )
                   ;;@ assembly/index.ts:15:30
                   (get_local $9)
                  )
                 )
                 ;;@ assembly/index.ts:16:8
                 (set_local $14
                  ;;@ assembly/index.ts:16:13
                  (f64.add
                   (f64.mul
                    (f64.mul
                     (f64.const 2)
                     ;;@ assembly/index.ts:16:19
                     (get_local $13)
                    )
                    ;;@ assembly/index.ts:16:24
                    (get_local $14)
                   )
                   ;;@ assembly/index.ts:16:29
                   (get_local $7)
                  )
                 )
                 ;;@ assembly/index.ts:17:8
                 (set_local $13
                  ;;@ assembly/index.ts:17:13
                  (get_local $15)
                 )
                 ;;@ assembly/index.ts:18:8
                 (if
                  ;;@ assembly/index.ts:18:12
                  (i32.ge_u
                   (tee_local $10
                    (i32.add
                     ;;@ assembly/index.ts:18:14
                     (get_local $10)
                     (i32.const 1)
                    )
                   )
                   ;;@ assembly/index.ts:18:27
                   (get_local $2)
                  )
                  ;;@ assembly/index.ts:18:32
                  (br $break|2)
                 )
                )
                ;;@ assembly/index.ts:14:79
                (set_local $10
                 (i32.add
                  ;;@ assembly/index.ts:14:81
                  (get_local $10)
                  (i32.const 1)
                 )
                )
                (br $continue|2)
               )
              )
             )
            )
            ;;@ assembly/index.ts:21:6
            (i32.store8
             ;;@ assembly/index.ts:21:16
             (i32.add
              (i32.mul
               (get_local $6)
               ;;@ assembly/index.ts:21:20
               (get_local $0)
              )
              ;;@ assembly/index.ts:21:28
              (get_local $8)
             )
             ;;@ assembly/index.ts:21:31
             (i32.div_u
              (i32.mul
               (get_local $10)
               ;;@ assembly/index.ts:21:43
               (i32.const 255)
              )
              ;;@ assembly/index.ts:21:49
              (get_local $2)
             )
            )
           )
           ;;@ assembly/index.ts:10:36
           (set_local $8
            (i32.add
             ;;@ assembly/index.ts:10:38
             (get_local $8)
             (i32.const 1)
            )
           )
           (br $continue|1)
          )
         )
        )
       )
      )
      ;;@ assembly/index.ts:8:35
      (set_local $6
       (i32.add
        ;;@ assembly/index.ts:8:37
        (get_local $6)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
 )
)
