(module
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (import "env" "memory" (memory $0 1))
 (global $assembly/index/w (mut i32) (i32.const 0))
 (global $assembly/index/h (mut i32) (i32.const 0))
 (global $assembly/index/s (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (export "init" (func $assembly/index/init))
 (export "step" (func $assembly/index/step))
 (export "memory" (memory $0))
 (func $assembly/index/init (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/index.ts:7:2
  (set_global $assembly/index/w
   ;;@ assembly/index.ts:7:6
   (get_local $0)
  )
  ;;@ assembly/index.ts:8:2
  (set_global $assembly/index/h
   ;;@ assembly/index.ts:8:6
   (get_local $1)
  )
  ;;@ assembly/index.ts:9:2
  (set_global $assembly/index/s
   ;;@ assembly/index.ts:9:6
   (i32.mul
    (get_local $0)
    ;;@ assembly/index.ts:9:14
    (get_local $1)
   )
  )
 )
 (func $assembly/index/step (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  ;;@ assembly/index.ts:14:2
  (block
   (set_local $0
    ;;@ assembly/index.ts:14:12
    (i32.sub
     (get_global $assembly/index/h)
     ;;@ assembly/index.ts:14:16
     (i32.const 1)
    )
   )
   (set_local $1
    ;;@ assembly/index.ts:15:12
    (i32.sub
     (get_global $assembly/index/w)
     ;;@ assembly/index.ts:15:16
     (i32.const 1)
    )
   )
  )
  ;;@ assembly/index.ts:19:2
  (block $break|0
   ;;@ assembly/index.ts:19:7
   (set_local $2
    ;;@ assembly/index.ts:19:15
    (i32.const 0)
   )
   (loop $continue|0
    (if
     ;;@ assembly/index.ts:19:18
     (i32.lt_s
      (get_local $2)
      ;;@ assembly/index.ts:19:22
      (get_global $assembly/index/h)
     )
     (block
      (block
       (block
        (set_local $3
         ;;@ assembly/index.ts:21:14
         (if (result i32)
          (i32.eq
           (get_local $2)
           ;;@ assembly/index.ts:21:19
           (i32.const 0)
          )
          ;;@ assembly/index.ts:21:23
          (get_local $0)
          ;;@ assembly/index.ts:21:29
          (i32.sub
           (get_local $2)
           ;;@ assembly/index.ts:21:33
           (i32.const 1)
          )
         )
        )
        (set_local $4
         ;;@ assembly/index.ts:22:14
         (if (result i32)
          (i32.eq
           (get_local $2)
           ;;@ assembly/index.ts:22:19
           (get_local $0)
          )
          ;;@ assembly/index.ts:22:25
          (i32.const 0)
          ;;@ assembly/index.ts:22:29
          (i32.add
           (get_local $2)
           ;;@ assembly/index.ts:22:33
           (i32.const 1)
          )
         )
        )
       )
       ;;@ assembly/index.ts:23:4
       (block $break|1
        ;;@ assembly/index.ts:23:9
        (set_local $5
         ;;@ assembly/index.ts:23:17
         (i32.const 0)
        )
        (loop $continue|1
         (if
          ;;@ assembly/index.ts:23:20
          (i32.lt_s
           (get_local $5)
           ;;@ assembly/index.ts:23:24
           (get_global $assembly/index/w)
          )
          (block
           (block
            (block
             (set_local $6
              ;;@ assembly/index.ts:24:16
              (if (result i32)
               (i32.eq
                (get_local $5)
                ;;@ assembly/index.ts:24:21
                (i32.const 0)
               )
               ;;@ assembly/index.ts:24:25
               (get_local $1)
               ;;@ assembly/index.ts:24:31
               (i32.sub
                (get_local $5)
                ;;@ assembly/index.ts:24:35
                (i32.const 1)
               )
              )
             )
             (set_local $7
              ;;@ assembly/index.ts:25:16
              (if (result i32)
               (i32.eq
                (get_local $5)
                ;;@ assembly/index.ts:25:21
                (get_local $1)
               )
               ;;@ assembly/index.ts:25:27
               (i32.const 0)
               ;;@ assembly/index.ts:25:31
               (i32.add
                (get_local $5)
                ;;@ assembly/index.ts:25:35
                (i32.const 1)
               )
              )
             )
            )
            ;;@ assembly/index.ts:29:6
            (set_local $8
             ;;@ assembly/index.ts:29:27
             (i32.add
              ;;@ assembly/index.ts:30:8
              (i32.add
               (i32.add
                (i32.add
                 (i32.add
                  (i32.add
                   (i32.add
                    (i32.load8_u
                     ;;@ assembly/index.ts:30:17
                     (i32.add
                      (i32.mul
                       (get_local $3)
                       ;;@ assembly/index.ts:30:23
                       (get_global $assembly/index/w)
                      )
                      ;;@ assembly/index.ts:30:27
                      (get_local $6)
                     )
                    )
                    ;;@ assembly/index.ts:30:34
                    (i32.load8_u
                     ;;@ assembly/index.ts:30:43
                     (i32.add
                      (i32.mul
                       (get_local $3)
                       ;;@ assembly/index.ts:30:49
                       (get_global $assembly/index/w)
                      )
                      ;;@ assembly/index.ts:30:53
                      (get_local $5)
                     )
                    )
                   )
                   ;;@ assembly/index.ts:30:58
                   (i32.load8_u
                    ;;@ assembly/index.ts:30:67
                    (i32.add
                     (i32.mul
                      (get_local $3)
                      ;;@ assembly/index.ts:30:73
                      (get_global $assembly/index/w)
                     )
                     ;;@ assembly/index.ts:30:77
                     (get_local $7)
                    )
                   )
                  )
                  ;;@ assembly/index.ts:31:8
                  (i32.load8_u
                   ;;@ assembly/index.ts:31:17
                   (i32.add
                    (i32.mul
                     (get_local $2)
                     ;;@ assembly/index.ts:31:23
                     (get_global $assembly/index/w)
                    )
                    ;;@ assembly/index.ts:31:27
                    (get_local $6)
                   )
                  )
                 )
                 ;;@ assembly/index.ts:31:58
                 (i32.load8_u
                  ;;@ assembly/index.ts:31:67
                  (i32.add
                   (i32.mul
                    (get_local $2)
                    ;;@ assembly/index.ts:31:73
                    (get_global $assembly/index/w)
                   )
                   ;;@ assembly/index.ts:31:77
                   (get_local $7)
                  )
                 )
                )
                ;;@ assembly/index.ts:32:8
                (i32.load8_u
                 ;;@ assembly/index.ts:32:17
                 (i32.add
                  (i32.mul
                   (get_local $4)
                   ;;@ assembly/index.ts:32:23
                   (get_global $assembly/index/w)
                  )
                  ;;@ assembly/index.ts:32:27
                  (get_local $6)
                 )
                )
               )
               ;;@ assembly/index.ts:32:34
               (i32.load8_u
                ;;@ assembly/index.ts:32:43
                (i32.add
                 (i32.mul
                  (get_local $4)
                  ;;@ assembly/index.ts:32:49
                  (get_global $assembly/index/w)
                 )
                 ;;@ assembly/index.ts:32:53
                 (get_local $5)
                )
               )
              )
              ;;@ assembly/index.ts:32:58
              (i32.load8_u
               ;;@ assembly/index.ts:32:67
               (i32.add
                (i32.mul
                 (get_local $4)
                 ;;@ assembly/index.ts:32:73
                 (get_global $assembly/index/w)
                )
                ;;@ assembly/index.ts:32:77
                (get_local $7)
               )
              )
             )
            )
            ;;@ assembly/index.ts:35:6
            (set_local $9
             ;;@ assembly/index.ts:35:18
             (i32.load8_u
              ;;@ assembly/index.ts:35:27
              (i32.add
               (i32.mul
                (get_local $2)
                ;;@ assembly/index.ts:35:31
                (get_global $assembly/index/w)
               )
               ;;@ assembly/index.ts:35:35
               (get_local $5)
              )
             )
            )
            ;;@ assembly/index.ts:36:6
            (if
             ;;@ assembly/index.ts:36:10
             (get_local $9)
             ;;@ assembly/index.ts:37:8
             (block $break|2
              (block $case2|2
               (block $case1|2
                (block $case0|2
                 (set_local $10
                  ;;@ assembly/index.ts:37:16
                  (get_local $8)
                 )
                 (br_if $case1|2
                  (i32.eq
                   (get_local $10)
                   ;;@ assembly/index.ts:42:15
                   (i32.const 2)
                  )
                 )
                 (br_if $case2|2
                  (i32.eq
                   (get_local $10)
                   ;;@ assembly/index.ts:42:23
                   (i32.const 3)
                  )
                 )
                 (br $case0|2)
                )
                ;;@ assembly/index.ts:40:19
                (block
                 ;;@ assembly/index.ts:40:21
                 (i32.store8
                  ;;@ assembly/index.ts:40:31
                  (i32.add
                   (i32.add
                    (get_global $assembly/index/s)
                    ;;@ assembly/index.ts:40:35
                    (i32.mul
                     (get_local $2)
                     ;;@ assembly/index.ts:40:39
                     (get_global $assembly/index/w)
                    )
                   )
                   ;;@ assembly/index.ts:40:43
                   (get_local $5)
                  )
                  ;;@ assembly/index.ts:40:46
                  (i32.const 0)
                 )
                 ;;@ assembly/index.ts:40:50
                 (br $break|2)
                )
               )
              )
             )
             ;;@ assembly/index.ts:45:8
             (block $break|3
              (block $case1|3
               (block $case0|3
                (set_local $10
                 ;;@ assembly/index.ts:45:16
                 (get_local $8)
                )
                (br_if $case0|3
                 (i32.eq
                  (get_local $10)
                  ;;@ assembly/index.ts:47:15
                  (i32.const 3)
                 )
                )
                (br $case1|3)
               )
               ;;@ assembly/index.ts:47:18
               (block
                ;;@ assembly/index.ts:47:20
                (i32.store8
                 ;;@ assembly/index.ts:47:30
                 (i32.add
                  (i32.add
                   (get_global $assembly/index/s)
                   ;;@ assembly/index.ts:47:34
                   (i32.mul
                    (get_local $2)
                    ;;@ assembly/index.ts:47:38
                    (get_global $assembly/index/w)
                   )
                  )
                  ;;@ assembly/index.ts:47:42
                  (get_local $5)
                 )
                 ;;@ assembly/index.ts:47:45
                 (i32.const 1)
                )
                ;;@ assembly/index.ts:47:49
                (br $break|3)
               )
              )
             )
            )
           )
           ;;@ assembly/index.ts:23:27
           (set_local $5
            (i32.add
             ;;@ assembly/index.ts:23:29
             (get_local $5)
             (i32.const 1)
            )
           )
           (br $continue|1)
          )
         )
        )
       )
      )
      ;;@ assembly/index.ts:19:25
      (set_local $2
       (i32.add
        ;;@ assembly/index.ts:19:27
        (get_local $2)
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
