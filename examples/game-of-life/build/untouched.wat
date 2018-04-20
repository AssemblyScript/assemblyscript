(module
 (type $iiv (func (param i32 i32)))
 (type $F (func (result f64)))
 (type $v (func))
 (import "JSMath" "random" (func $~lib/math/JSMath.random (result f64)))
 (import "env" "memory" (memory $0 1))
 (global $assembly/index/RGB_ALIVE i32 (i32.const 15110867))
 (global $assembly/index/RGB_DEAD i32 (i32.const 8723366))
 (global $assembly/index/BIT_ROT i32 (i32.const 10))
 (global $assembly/index/w (mut i32) (i32.const 0))
 (global $assembly/index/h (mut i32) (i32.const 0))
 (global $assembly/index/s (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (export "init" (func $assembly/index/init))
 (export "step" (func $assembly/index/step))
 (export "memory" (memory $0))
 (func $assembly/index/init (; 1 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  ;;@ assembly/index.ts:30:2
  (set_global $assembly/index/w
   ;;@ assembly/index.ts:30:6
   (get_local $0)
  )
  ;;@ assembly/index.ts:31:2
  (set_global $assembly/index/h
   ;;@ assembly/index.ts:31:6
   (get_local $1)
  )
  ;;@ assembly/index.ts:32:2
  (set_global $assembly/index/s
   ;;@ assembly/index.ts:32:6
   (i32.mul
    (get_local $0)
    ;;@ assembly/index.ts:32:14
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:35:2
  (block $break|0
   ;;@ assembly/index.ts:35:7
   (set_local $2
    ;;@ assembly/index.ts:35:15
    (i32.const 0)
   )
   (loop $continue|0
    (if
     ;;@ assembly/index.ts:35:18
     (i32.lt_s
      (get_local $2)
      ;;@ assembly/index.ts:35:22
      (get_global $assembly/index/h)
     )
     (block
      (block
       (block $break|1
        ;;@ assembly/index.ts:36:9
        (set_local $3
         ;;@ assembly/index.ts:36:17
         (i32.const 0)
        )
        (loop $continue|1
         (if
          ;;@ assembly/index.ts:36:20
          (i32.lt_s
           (get_local $3)
           ;;@ assembly/index.ts:36:24
           (get_global $assembly/index/w)
          )
          (block
           (block
            (block $assembly/index/set|inlined.0
             (set_local $4
              ;;@ assembly/index.ts:37:10
              (get_local $3)
             )
             (set_local $5
              ;;@ assembly/index.ts:37:13
              (get_local $2)
             )
             (set_local $6
              ;;@ assembly/index.ts:37:16
              (if (result i32)
               (f64.gt
                ;;@ assembly/index.ts:37:21
                (call $~lib/math/JSMath.random)
                ;;@ assembly/index.ts:37:32
                (f64.const 0.1)
               )
               ;;@ assembly/index.ts:37:38
               (i32.and
                (i32.const 8723366)
                ;;@ assembly/index.ts:37:49
                (i32.const 16777215)
               )
               ;;@ assembly/index.ts:37:62
               (i32.or
                (i32.const 15110867)
                ;;@ assembly/index.ts:37:74
                (i32.const -16777216)
               )
              )
             )
             ;;@ assembly/index.ts:18:2
             (i32.store
              ;;@ assembly/index.ts:18:13
              (i32.shl
               (i32.add
                ;;@ assembly/index.ts:18:14
                (i32.add
                 (get_global $assembly/index/s)
                 ;;@ assembly/index.ts:18:18
                 (i32.mul
                  (get_local $5)
                  ;;@ assembly/index.ts:18:22
                  (get_global $assembly/index/w)
                 )
                )
                ;;@ assembly/index.ts:18:26
                (get_local $4)
               )
               ;;@ assembly/index.ts:18:32
               (i32.const 2)
              )
              ;;@ assembly/index.ts:18:35
              (get_local $6)
             )
            )
           )
           ;;@ assembly/index.ts:36:27
           (set_local $3
            (i32.add
             ;;@ assembly/index.ts:36:29
             (get_local $3)
             (i32.const 1)
            )
           )
           (br $continue|1)
          )
         )
        )
       )
      )
      ;;@ assembly/index.ts:35:25
      (set_local $2
       (i32.add
        ;;@ assembly/index.ts:35:27
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
 (func $assembly/index/step (; 2 ;) (type $v)
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
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  ;;@ assembly/index.ts:44:2
  (block
   (set_local $0
    ;;@ assembly/index.ts:44:12
    (i32.sub
     (get_global $assembly/index/h)
     ;;@ assembly/index.ts:44:16
     (i32.const 1)
    )
   )
   (set_local $1
    ;;@ assembly/index.ts:45:12
    (i32.sub
     (get_global $assembly/index/w)
     ;;@ assembly/index.ts:45:16
     (i32.const 1)
    )
   )
  )
  ;;@ assembly/index.ts:49:2
  (block $break|0
   ;;@ assembly/index.ts:49:7
   (set_local $2
    ;;@ assembly/index.ts:49:15
    (i32.const 0)
   )
   (loop $continue|0
    (if
     ;;@ assembly/index.ts:49:18
     (i32.lt_s
      (get_local $2)
      ;;@ assembly/index.ts:49:22
      (get_global $assembly/index/h)
     )
     (block
      (block
       (block
        (set_local $3
         ;;@ assembly/index.ts:50:14
         (if (result i32)
          (i32.eq
           (get_local $2)
           ;;@ assembly/index.ts:50:19
           (i32.const 0)
          )
          ;;@ assembly/index.ts:50:23
          (get_local $0)
          ;;@ assembly/index.ts:50:29
          (i32.sub
           (get_local $2)
           ;;@ assembly/index.ts:50:33
           (i32.const 1)
          )
         )
        )
        (set_local $4
         ;;@ assembly/index.ts:51:14
         (if (result i32)
          (i32.eq
           (get_local $2)
           ;;@ assembly/index.ts:51:19
           (get_local $0)
          )
          ;;@ assembly/index.ts:51:25
          (i32.const 0)
          ;;@ assembly/index.ts:51:29
          (i32.add
           (get_local $2)
           ;;@ assembly/index.ts:51:33
           (i32.const 1)
          )
         )
        )
       )
       ;;@ assembly/index.ts:52:4
       (block $break|1
        ;;@ assembly/index.ts:52:9
        (set_local $5
         ;;@ assembly/index.ts:52:17
         (i32.const 0)
        )
        (loop $continue|1
         (if
          ;;@ assembly/index.ts:52:20
          (i32.lt_s
           (get_local $5)
           ;;@ assembly/index.ts:52:24
           (get_global $assembly/index/w)
          )
          (block
           (block
            (block
             (set_local $6
              ;;@ assembly/index.ts:53:16
              (if (result i32)
               (i32.eq
                (get_local $5)
                ;;@ assembly/index.ts:53:21
                (i32.const 0)
               )
               ;;@ assembly/index.ts:53:25
               (get_local $1)
               ;;@ assembly/index.ts:53:31
               (i32.sub
                (get_local $5)
                ;;@ assembly/index.ts:53:35
                (i32.const 1)
               )
              )
             )
             (set_local $7
              ;;@ assembly/index.ts:54:16
              (if (result i32)
               (i32.eq
                (get_local $5)
                ;;@ assembly/index.ts:54:21
                (get_local $1)
               )
               ;;@ assembly/index.ts:54:27
               (i32.const 0)
               ;;@ assembly/index.ts:54:31
               (i32.add
                (get_local $5)
                ;;@ assembly/index.ts:54:35
                (i32.const 1)
               )
              )
             )
            )
            ;;@ assembly/index.ts:58:6
            (set_local $8
             ;;@ assembly/index.ts:58:27
             (i32.add
              ;;@ assembly/index.ts:59:8
              (i32.add
               (i32.add
                (i32.add
                 (i32.add
                  (i32.add
                   (i32.add
                    (i32.and
                     ;;@ assembly/index.ts:59:9
                     (block $assembly/index/get|inlined.0 (result i32)
                      (set_local $8
                       ;;@ assembly/index.ts:59:13
                       (get_local $6)
                      )
                      (set_local $9
                       ;;@ assembly/index.ts:59:18
                       (get_local $3)
                      )
                      (br $assembly/index/get|inlined.0
                       (i32.load
                        (i32.shl
                         (i32.add
                          (i32.mul
                           (get_local $9)
                           (get_global $assembly/index/w)
                          )
                          (get_local $8)
                         )
                         (i32.const 2)
                        )
                       )
                      )
                     )
                     ;;@ assembly/index.ts:59:25
                     (i32.const 1)
                    )
                    ;;@ assembly/index.ts:59:30
                    (i32.and
                     ;;@ assembly/index.ts:59:31
                     (block $assembly/index/get|inlined.1 (result i32)
                      (set_local $9
                       ;;@ assembly/index.ts:59:35
                       (get_local $5)
                      )
                      (set_local $8
                       ;;@ assembly/index.ts:59:40
                       (get_local $3)
                      )
                      (br $assembly/index/get|inlined.1
                       (i32.load
                        (i32.shl
                         (i32.add
                          (i32.mul
                           (get_local $8)
                           (get_global $assembly/index/w)
                          )
                          (get_local $9)
                         )
                         (i32.const 2)
                        )
                       )
                      )
                     )
                     ;;@ assembly/index.ts:59:47
                     (i32.const 1)
                    )
                   )
                   ;;@ assembly/index.ts:59:52
                   (i32.and
                    ;;@ assembly/index.ts:59:53
                    (block $assembly/index/get|inlined.2 (result i32)
                     (set_local $8
                      ;;@ assembly/index.ts:59:57
                      (get_local $7)
                     )
                     (set_local $9
                      ;;@ assembly/index.ts:59:62
                      (get_local $3)
                     )
                     (br $assembly/index/get|inlined.2
                      (i32.load
                       (i32.shl
                        (i32.add
                         (i32.mul
                          (get_local $9)
                          (get_global $assembly/index/w)
                         )
                         (get_local $8)
                        )
                        (i32.const 2)
                       )
                      )
                     )
                    )
                    ;;@ assembly/index.ts:59:69
                    (i32.const 1)
                   )
                  )
                  ;;@ assembly/index.ts:60:8
                  (i32.and
                   ;;@ assembly/index.ts:60:9
                   (block $assembly/index/get|inlined.3 (result i32)
                    (set_local $9
                     ;;@ assembly/index.ts:60:13
                     (get_local $6)
                    )
                    (set_local $8
                     ;;@ assembly/index.ts:60:18
                     (get_local $2)
                    )
                    (br $assembly/index/get|inlined.3
                     (i32.load
                      (i32.shl
                       (i32.add
                        (i32.mul
                         (get_local $8)
                         (get_global $assembly/index/w)
                        )
                        (get_local $9)
                       )
                       (i32.const 2)
                      )
                     )
                    )
                   )
                   ;;@ assembly/index.ts:60:25
                   (i32.const 1)
                  )
                 )
                 ;;@ assembly/index.ts:60:52
                 (i32.and
                  ;;@ assembly/index.ts:60:53
                  (block $assembly/index/get|inlined.4 (result i32)
                   (set_local $8
                    ;;@ assembly/index.ts:60:57
                    (get_local $7)
                   )
                   (set_local $9
                    ;;@ assembly/index.ts:60:62
                    (get_local $2)
                   )
                   (br $assembly/index/get|inlined.4
                    (i32.load
                     (i32.shl
                      (i32.add
                       (i32.mul
                        (get_local $9)
                        (get_global $assembly/index/w)
                       )
                       (get_local $8)
                      )
                      (i32.const 2)
                     )
                    )
                   )
                  )
                  ;;@ assembly/index.ts:60:69
                  (i32.const 1)
                 )
                )
                ;;@ assembly/index.ts:61:8
                (i32.and
                 ;;@ assembly/index.ts:61:9
                 (block $assembly/index/get|inlined.5 (result i32)
                  (set_local $9
                   ;;@ assembly/index.ts:61:13
                   (get_local $6)
                  )
                  (set_local $8
                   ;;@ assembly/index.ts:61:18
                   (get_local $4)
                  )
                  (br $assembly/index/get|inlined.5
                   (i32.load
                    (i32.shl
                     (i32.add
                      (i32.mul
                       (get_local $8)
                       (get_global $assembly/index/w)
                      )
                      (get_local $9)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                 )
                 ;;@ assembly/index.ts:61:25
                 (i32.const 1)
                )
               )
               ;;@ assembly/index.ts:61:30
               (i32.and
                ;;@ assembly/index.ts:61:31
                (block $assembly/index/get|inlined.6 (result i32)
                 (set_local $8
                  ;;@ assembly/index.ts:61:35
                  (get_local $5)
                 )
                 (set_local $9
                  ;;@ assembly/index.ts:61:40
                  (get_local $4)
                 )
                 (br $assembly/index/get|inlined.6
                  (i32.load
                   (i32.shl
                    (i32.add
                     (i32.mul
                      (get_local $9)
                      (get_global $assembly/index/w)
                     )
                     (get_local $8)
                    )
                    (i32.const 2)
                   )
                  )
                 )
                )
                ;;@ assembly/index.ts:61:47
                (i32.const 1)
               )
              )
              ;;@ assembly/index.ts:61:52
              (i32.and
               ;;@ assembly/index.ts:61:53
               (block $assembly/index/get|inlined.7 (result i32)
                (set_local $9
                 ;;@ assembly/index.ts:61:57
                 (get_local $7)
                )
                (set_local $8
                 ;;@ assembly/index.ts:61:62
                 (get_local $4)
                )
                (br $assembly/index/get|inlined.7
                 (i32.load
                  (i32.shl
                   (i32.add
                    (i32.mul
                     (get_local $8)
                     (get_global $assembly/index/w)
                    )
                    (get_local $9)
                   )
                   (i32.const 2)
                  )
                 )
                )
               )
               ;;@ assembly/index.ts:61:69
               (i32.const 1)
              )
             )
            )
            ;;@ assembly/index.ts:64:6
            (set_local $10
             ;;@ assembly/index.ts:64:17
             (block $assembly/index/get|inlined.8 (result i32)
              (set_local $9
               ;;@ assembly/index.ts:64:21
               (get_local $5)
              )
              (set_local $10
               ;;@ assembly/index.ts:64:24
               (get_local $2)
              )
              ;;@ assembly/index.ts:12:35
              (br $assembly/index/get|inlined.8
               ;;@ assembly/index.ts:12:9
               (i32.load
                ;;@ assembly/index.ts:12:19
                (i32.shl
                 (i32.add
                  ;;@ assembly/index.ts:12:20
                  (i32.mul
                   (get_local $10)
                   ;;@ assembly/index.ts:12:24
                   (get_global $assembly/index/w)
                  )
                  ;;@ assembly/index.ts:12:28
                  (get_local $9)
                 )
                 ;;@ assembly/index.ts:12:34
                 (i32.const 2)
                )
               )
              )
             )
            )
            ;;@ assembly/index.ts:65:6
            (if
             ;;@ assembly/index.ts:65:10
             (i32.and
              (get_local $10)
              ;;@ assembly/index.ts:65:17
              (i32.const 1)
             )
             ;;@ assembly/index.ts:67:8
             (if
              ;;@ assembly/index.ts:67:12
              (i32.eq
               (i32.and
                ;;@ assembly/index.ts:67:13
                (get_local $8)
                ;;@ assembly/index.ts:67:30
                (i32.const 14)
               )
               ;;@ assembly/index.ts:67:41
               (i32.const 2)
              )
              ;;@ assembly/index.ts:67:49
              (block $assembly/index/rot|inlined.0
               (set_local $9
                ;;@ assembly/index.ts:67:53
                (get_local $5)
               )
               (set_local $11
                ;;@ assembly/index.ts:67:56
                (get_local $2)
               )
               (set_local $12
                ;;@ assembly/index.ts:67:59
                (get_local $10)
               )
               (set_local $13
                (select
                 (tee_local $13
                  (i32.sub
                   (i32.shr_u
                    (get_local $12)
                    (i32.const 24)
                   )
                   (i32.const 10)
                  )
                 )
                 (tee_local $14
                  (i32.const 0)
                 )
                 (i32.gt_s
                  (get_local $13)
                  (get_local $14)
                 )
                )
               )
               (block $assembly/index/set|inlined.1
                (set_local $14
                 (get_local $9)
                )
                (set_local $15
                 (get_local $11)
                )
                (set_local $16
                 (i32.or
                  (i32.shl
                   (get_local $13)
                   (i32.const 24)
                  )
                  (i32.and
                   (get_local $12)
                   (i32.const 16777215)
                  )
                 )
                )
                (i32.store
                 (i32.shl
                  (i32.add
                   (i32.add
                    (get_global $assembly/index/s)
                    (i32.mul
                     (get_local $15)
                     (get_global $assembly/index/w)
                    )
                   )
                   (get_local $14)
                  )
                  (i32.const 2)
                 )
                 (get_local $16)
                )
               )
              )
              ;;@ assembly/index.ts:69:13
              (block $assembly/index/set|inlined.2
               (set_local $13
                ;;@ assembly/index.ts:69:17
                (get_local $5)
               )
               (set_local $12
                ;;@ assembly/index.ts:69:20
                (get_local $2)
               )
               (set_local $11
                ;;@ assembly/index.ts:69:23
                (i32.or
                 (i32.const 8723366)
                 ;;@ assembly/index.ts:69:34
                 (i32.const -16777216)
                )
               )
               (i32.store
                (i32.shl
                 (i32.add
                  (i32.add
                   (get_global $assembly/index/s)
                   (i32.mul
                    (get_local $12)
                    (get_global $assembly/index/w)
                   )
                  )
                  (get_local $13)
                 )
                 (i32.const 2)
                )
                (get_local $11)
               )
              )
             )
             ;;@ assembly/index.ts:72:8
             (if
              ;;@ assembly/index.ts:72:12
              (i32.eq
               (get_local $8)
               ;;@ assembly/index.ts:72:30
               (i32.const 3)
              )
              ;;@ assembly/index.ts:72:33
              (block $assembly/index/set|inlined.3
               (set_local $11
                ;;@ assembly/index.ts:72:37
                (get_local $5)
               )
               (set_local $12
                ;;@ assembly/index.ts:72:40
                (get_local $2)
               )
               (set_local $13
                ;;@ assembly/index.ts:72:43
                (i32.or
                 (i32.const 15110867)
                 ;;@ assembly/index.ts:72:55
                 (i32.const -16777216)
                )
               )
               (i32.store
                (i32.shl
                 (i32.add
                  (i32.add
                   (get_global $assembly/index/s)
                   (i32.mul
                    (get_local $12)
                    (get_global $assembly/index/w)
                   )
                  )
                  (get_local $11)
                 )
                 (i32.const 2)
                )
                (get_local $13)
               )
              )
              ;;@ assembly/index.ts:74:13
              (block $assembly/index/rot|inlined.1
               (set_local $13
                ;;@ assembly/index.ts:74:17
                (get_local $5)
               )
               (set_local $12
                ;;@ assembly/index.ts:74:20
                (get_local $2)
               )
               (set_local $11
                ;;@ assembly/index.ts:74:23
                (get_local $10)
               )
               ;;@ assembly/index.ts:24:2
               (set_local $9
                ;;@ assembly/index.ts:24:10
                (select
                 (tee_local $9
                  ;;@ assembly/index.ts:24:19
                  (i32.sub
                   (i32.shr_u
                    ;;@ assembly/index.ts:24:20
                    (get_local $11)
                    ;;@ assembly/index.ts:24:26
                    (i32.const 24)
                   )
                   ;;@ assembly/index.ts:24:32
                   (i32.const 10)
                  )
                 )
                 (tee_local $16
                  ;;@ assembly/index.ts:24:41
                  (i32.const 0)
                 )
                 (i32.gt_s
                  (get_local $9)
                  (get_local $16)
                 )
                )
               )
               ;;@ assembly/index.ts:25:2
               (block $assembly/index/set|inlined.4
                (set_local $16
                 ;;@ assembly/index.ts:25:6
                 (get_local $13)
                )
                (set_local $15
                 ;;@ assembly/index.ts:25:9
                 (get_local $12)
                )
                (set_local $14
                 ;;@ assembly/index.ts:25:12
                 (i32.or
                  (i32.shl
                   ;;@ assembly/index.ts:25:13
                   (get_local $9)
                   ;;@ assembly/index.ts:25:18
                   (i32.const 24)
                  )
                  ;;@ assembly/index.ts:25:24
                  (i32.and
                   ;;@ assembly/index.ts:25:25
                   (get_local $11)
                   ;;@ assembly/index.ts:25:29
                   (i32.const 16777215)
                  )
                 )
                )
                ;;@ assembly/index.ts:18:2
                (i32.store
                 ;;@ assembly/index.ts:18:13
                 (i32.shl
                  (i32.add
                   ;;@ assembly/index.ts:18:14
                   (i32.add
                    (get_global $assembly/index/s)
                    ;;@ assembly/index.ts:18:18
                    (i32.mul
                     (get_local $15)
                     ;;@ assembly/index.ts:18:22
                     (get_global $assembly/index/w)
                    )
                   )
                   ;;@ assembly/index.ts:18:26
                   (get_local $16)
                  )
                  ;;@ assembly/index.ts:18:32
                  (i32.const 2)
                 )
                 ;;@ assembly/index.ts:18:35
                 (get_local $14)
                )
               )
              )
             )
            )
           )
           ;;@ assembly/index.ts:52:27
           (set_local $5
            (i32.add
             ;;@ assembly/index.ts:52:29
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
      ;;@ assembly/index.ts:49:25
      (set_local $2
       (i32.add
        ;;@ assembly/index.ts:49:27
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
