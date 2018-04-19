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
  ;;@ assembly/index.ts:9:2
  (set_global $assembly/index/w
   ;;@ assembly/index.ts:9:6
   (get_local $0)
  )
  ;;@ assembly/index.ts:10:2
  (set_global $assembly/index/h
   ;;@ assembly/index.ts:10:6
   (get_local $1)
  )
  ;;@ assembly/index.ts:11:2
  (set_global $assembly/index/s
   ;;@ assembly/index.ts:11:6
   (i32.mul
    (get_local $0)
    ;;@ assembly/index.ts:11:14
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
  ;;@ assembly/index.ts:16:2
  (block
   (set_local $0
    ;;@ assembly/index.ts:16:12
    (i32.sub
     (get_global $assembly/index/h)
     ;;@ assembly/index.ts:16:16
     (i32.const 1)
    )
   )
   (set_local $1
    ;;@ assembly/index.ts:17:12
    (i32.sub
     (get_global $assembly/index/w)
     ;;@ assembly/index.ts:17:16
     (i32.const 1)
    )
   )
  )
  ;;@ assembly/index.ts:21:2
  (block $break|0
   ;;@ assembly/index.ts:21:7
   (set_local $2
    ;;@ assembly/index.ts:21:15
    (i32.const 0)
   )
   (loop $continue|0
    (if
     ;;@ assembly/index.ts:21:18
     (i32.lt_s
      (get_local $2)
      ;;@ assembly/index.ts:21:22
      (get_global $assembly/index/h)
     )
     (block
      (block
       (block
        (set_local $3
         ;;@ assembly/index.ts:23:14
         (if (result i32)
          (i32.eq
           (get_local $2)
           ;;@ assembly/index.ts:23:19
           (i32.const 0)
          )
          ;;@ assembly/index.ts:23:23
          (get_local $0)
          ;;@ assembly/index.ts:23:29
          (i32.sub
           (get_local $2)
           ;;@ assembly/index.ts:23:33
           (i32.const 1)
          )
         )
        )
        (set_local $4
         ;;@ assembly/index.ts:24:14
         (if (result i32)
          (i32.eq
           (get_local $2)
           ;;@ assembly/index.ts:24:19
           (get_local $0)
          )
          ;;@ assembly/index.ts:24:25
          (i32.const 0)
          ;;@ assembly/index.ts:24:29
          (i32.add
           (get_local $2)
           ;;@ assembly/index.ts:24:33
           (i32.const 1)
          )
         )
        )
       )
       ;;@ assembly/index.ts:25:4
       (block $break|1
        ;;@ assembly/index.ts:25:9
        (set_local $5
         ;;@ assembly/index.ts:25:17
         (i32.const 0)
        )
        (loop $continue|1
         (if
          ;;@ assembly/index.ts:25:20
          (i32.lt_s
           (get_local $5)
           ;;@ assembly/index.ts:25:24
           (get_global $assembly/index/w)
          )
          (block
           (block
            (block
             (set_local $6
              ;;@ assembly/index.ts:26:16
              (if (result i32)
               (i32.eq
                (get_local $5)
                ;;@ assembly/index.ts:26:21
                (i32.const 0)
               )
               ;;@ assembly/index.ts:26:25
               (get_local $1)
               ;;@ assembly/index.ts:26:31
               (i32.sub
                (get_local $5)
                ;;@ assembly/index.ts:26:35
                (i32.const 1)
               )
              )
             )
             (set_local $7
              ;;@ assembly/index.ts:27:16
              (if (result i32)
               (i32.eq
                (get_local $5)
                ;;@ assembly/index.ts:27:21
                (get_local $1)
               )
               ;;@ assembly/index.ts:27:27
               (i32.const 0)
               ;;@ assembly/index.ts:27:31
               (i32.add
                (get_local $5)
                ;;@ assembly/index.ts:27:35
                (i32.const 1)
               )
              )
             )
            )
            ;;@ assembly/index.ts:31:6
            (set_local $8
             ;;@ assembly/index.ts:31:27
             (i32.add
              ;;@ assembly/index.ts:32:8
              (i32.add
               (i32.add
                (i32.add
                 (i32.add
                  (i32.add
                   (i32.add
                    (i32.load8_u
                     ;;@ assembly/index.ts:32:17
                     (i32.add
                      (i32.mul
                       (get_local $3)
                       ;;@ assembly/index.ts:32:23
                       (get_global $assembly/index/w)
                      )
                      ;;@ assembly/index.ts:32:27
                      (get_local $6)
                     )
                    )
                    ;;@ assembly/index.ts:32:34
                    (i32.load8_u
                     ;;@ assembly/index.ts:32:43
                     (i32.add
                      (i32.mul
                       (get_local $3)
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
                      (get_local $3)
                      ;;@ assembly/index.ts:32:73
                      (get_global $assembly/index/w)
                     )
                     ;;@ assembly/index.ts:32:77
                     (get_local $7)
                    )
                   )
                  )
                  ;;@ assembly/index.ts:33:8
                  (i32.load8_u
                   ;;@ assembly/index.ts:33:17
                   (i32.add
                    (i32.mul
                     (get_local $2)
                     ;;@ assembly/index.ts:33:23
                     (get_global $assembly/index/w)
                    )
                    ;;@ assembly/index.ts:33:27
                    (get_local $6)
                   )
                  )
                 )
                 ;;@ assembly/index.ts:33:58
                 (i32.load8_u
                  ;;@ assembly/index.ts:33:67
                  (i32.add
                   (i32.mul
                    (get_local $2)
                    ;;@ assembly/index.ts:33:73
                    (get_global $assembly/index/w)
                   )
                   ;;@ assembly/index.ts:33:77
                   (get_local $7)
                  )
                 )
                )
                ;;@ assembly/index.ts:34:8
                (i32.load8_u
                 ;;@ assembly/index.ts:34:17
                 (i32.add
                  (i32.mul
                   (get_local $4)
                   ;;@ assembly/index.ts:34:23
                   (get_global $assembly/index/w)
                  )
                  ;;@ assembly/index.ts:34:27
                  (get_local $6)
                 )
                )
               )
               ;;@ assembly/index.ts:34:34
               (i32.load8_u
                ;;@ assembly/index.ts:34:43
                (i32.add
                 (i32.mul
                  (get_local $4)
                  ;;@ assembly/index.ts:34:49
                  (get_global $assembly/index/w)
                 )
                 ;;@ assembly/index.ts:34:53
                 (get_local $5)
                )
               )
              )
              ;;@ assembly/index.ts:34:58
              (i32.load8_u
               ;;@ assembly/index.ts:34:67
               (i32.add
                (i32.mul
                 (get_local $4)
                 ;;@ assembly/index.ts:34:73
                 (get_global $assembly/index/w)
                )
                ;;@ assembly/index.ts:34:77
                (get_local $7)
               )
              )
             )
            )
            ;;@ assembly/index.ts:37:6
            (set_local $9
             ;;@ assembly/index.ts:37:18
             (i32.load8_u
              ;;@ assembly/index.ts:37:27
              (i32.add
               (i32.mul
                (get_local $2)
                ;;@ assembly/index.ts:37:31
                (get_global $assembly/index/w)
               )
               ;;@ assembly/index.ts:37:35
               (get_local $5)
              )
             )
            )
            ;;@ assembly/index.ts:38:6
            (if
             ;;@ assembly/index.ts:38:10
             (get_local $9)
             ;;@ assembly/index.ts:39:8
             (block $break|2
              (block $case2|2
               (block $case1|2
                (block $case0|2
                 (set_local $10
                  ;;@ assembly/index.ts:39:16
                  (get_local $8)
                 )
                 (br_if $case1|2
                  (i32.eq
                   (get_local $10)
                   ;;@ assembly/index.ts:44:15
                   (i32.const 2)
                  )
                 )
                 (br_if $case2|2
                  (i32.eq
                   (get_local $10)
                   ;;@ assembly/index.ts:44:23
                   (i32.const 3)
                  )
                 )
                 (br $case0|2)
                )
                ;;@ assembly/index.ts:42:19
                (block
                 ;;@ assembly/index.ts:42:21
                 (i32.store8
                  ;;@ assembly/index.ts:42:31
                  (i32.add
                   (i32.add
                    (get_global $assembly/index/s)
                    ;;@ assembly/index.ts:42:35
                    (i32.mul
                     (get_local $2)
                     ;;@ assembly/index.ts:42:39
                     (get_global $assembly/index/w)
                    )
                   )
                   ;;@ assembly/index.ts:42:43
                   (get_local $5)
                  )
                  ;;@ assembly/index.ts:42:46
                  (i32.const 0)
                 )
                 ;;@ assembly/index.ts:42:50
                 (br $break|2)
                )
               )
              )
             )
             ;;@ assembly/index.ts:47:8
             (block $break|3
              (block $case1|3
               (block $case0|3
                (set_local $10
                 ;;@ assembly/index.ts:47:16
                 (get_local $8)
                )
                (br_if $case0|3
                 (i32.eq
                  (get_local $10)
                  ;;@ assembly/index.ts:49:15
                  (i32.const 3)
                 )
                )
                (br $case1|3)
               )
               ;;@ assembly/index.ts:49:18
               (block
                ;;@ assembly/index.ts:49:20
                (i32.store8
                 ;;@ assembly/index.ts:49:30
                 (i32.add
                  (i32.add
                   (get_global $assembly/index/s)
                   ;;@ assembly/index.ts:49:34
                   (i32.mul
                    (get_local $2)
                    ;;@ assembly/index.ts:49:38
                    (get_global $assembly/index/w)
                   )
                  )
                  ;;@ assembly/index.ts:49:42
                  (get_local $5)
                 )
                 ;;@ assembly/index.ts:49:45
                 (i32.const 1)
                )
                ;;@ assembly/index.ts:49:49
                (br $break|3)
               )
              )
             )
            )
           )
           ;;@ assembly/index.ts:25:27
           (set_local $5
            (i32.add
             ;;@ assembly/index.ts:25:29
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
      ;;@ assembly/index.ts:21:25
      (set_local $2
       (i32.add
        ;;@ assembly/index.ts:21:27
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
